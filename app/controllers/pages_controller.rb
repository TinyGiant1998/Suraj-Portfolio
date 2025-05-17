class PagesController < ApplicationController
  def home
  end

  def about
  end

  def skills
  end

  def projects
  end

  def contact
    @contact = Contact.new
  end

  def send_contact
    @contact = Contact.new(contact_params)
    if @contact.save
      ContactMailer.send_contact(@contact).deliver_now
      redirect_to contact_path, notice: "Message Sent!"
    else
      redirect_to contact_path, alert: "Something went wrong."
    end
  end

  def contact_params 
    params.require(:contact).permit(:name, :email, :message)
  end
end
