class ApplicationMailer < ActionMailer::Base
  layout 'mailer'
  default from: '"Support Team" <support@10khours.to>'

  # mailer views live in views/mailers
  def self.inherited(subclass)
    subclass.default template_path: "mailers/#{subclass.name.to_s.underscore}"
  end
end
