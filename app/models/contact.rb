class Contact < MailForm::Base # try ActionMailer::Base?
  #attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Devonite - Support", #%(#{inbox})
      :to => "enquiries@devonite.co.uk",
      :from => %(<#{email}>)
    }
  end
end