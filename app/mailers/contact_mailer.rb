class ContactMailer < ActionMailer::Base
  def contact_request(contact_request)
    @contact_request = contact_request

    opts = {
      to: 'arm.amador@gmail.com',
      subject: contact_request.subject,
      from: contact_request.email || "unknown@wizarddevelopment.com"
    }

    mail(opts).deliver
  end
end
