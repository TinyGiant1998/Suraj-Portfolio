class ContactMailer < ApplicationMailer

  default from: ENV['SMTP_USER_NAME']

  def send_contact(contact)
    @contact = contact
    mail(to: "tinysuraj143@gmail.com", subject: "New portfolio message")
  end
  
end
