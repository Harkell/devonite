class Proposal < MailForm::Base # try ActionMailer::Base?
  #attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :website
  attribute :phone
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Devonite - Lets get started", #%(#{inbox})
      :to => "comely@hotmail.co.uk",
      :from => %("#{name}" <#{email}>)
    }
  end
end