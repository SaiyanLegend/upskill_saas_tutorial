class ContactMailer < ActionMailer::Base
    default to: 'jerik.mitchell@gmail.com'
    
    def method_name
        contact_email(name,email, body)
        @name = name
        @email = email
        @body = body
        
        mail(from: email, subject: 'Contact Form Message')
    end
end

