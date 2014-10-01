class Proposal < MailForm::Base # try ActionMailer::Base?
  #attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :name
  attribute :business
  attribute :mobile
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Devonite - Lets get started", #%(#{inbox})
      :to => "support@devonite.co.uk",
      :from => %("#{name}" <#{email}>)
    }
  end
end