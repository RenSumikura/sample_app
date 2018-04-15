class ContactMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.sent.subject
  #
  def sent(contact)

    @contact = contact
    mail(to: @contact.email, subject: "Thank you for your contact!")
    #mail(to: "moneto03+sm@gmail.com", subject: "Mail has been derivered!")
    #mail(to: "rsumikurasample@gmail.com", subject: "Mail has been derivered!")
    
  end
  
  def received_email(contact)
    @contact = contact
    mail(to: "moneto03+sm@gmail.com", subject: "Mail has been derivered!")
  end
    

end
