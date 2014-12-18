class ContactMailer < ActionMailer::Base
  def contact_request(contact_request)
    @contact_request = contact_request

    opts = {
      to: ENV['ROYALCREMASEMAIL'],
      subject: contact_request.subject,
      from: contact_request.email
    }

    mail(opts).deliver
  end
end
