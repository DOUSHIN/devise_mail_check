class ContactMailer < ApplicationMailer
  @contact = contact

  mail to: "", subject: "お問い合わせの確認メール"
end
