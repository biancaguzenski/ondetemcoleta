class Contact < MailForm::Base
    attribute :name, validate: true
    attribute :email, validate: true
    attribute :message, validate: true
    def headers
      { 
        subject: "Contact Form",
        to: 'ondetemcoleta@gmail.com',
        from: %("#{name}" <#{email}>)
      }
    end
  end