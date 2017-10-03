class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact_us.subject
  #


  def contact_us( admin, name, email, phone, contact, product, question, newsletter, song )
    @greeting = "Howdy"
    @name=name
    @email=email
    @phone=phone
    @contact=contact
    @question=question
    @newsletter=newsletter
    @song=song

    mail to: "#{admin}",
         from: "\"Ruprecht's Guitars Website Visitor Message\" <uncleruprecht@ruprechtsguitars.com>",
         #CHANGE BELOW TO  WHOEVER ELSE OWNS SITE/READS EMAIL!!!
         bcc: "snyder.chris.@gmail.com"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.thank_you.subject
  #
  def thank_you(user)
    @greeting = "Howdy"

    mail to: user,
         from: "\"Ruprecht's Guitars Thanks You!\" <uncleruprecht@ruprechtsguitars.com>"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.article_admin.subject
  #
  def article_admin(article_id, user)
    @greeting = "Howdy #{user}"
    @article = Article.find( article_id )

    mail  to: user,
          from: "\"Ruprecht's Guitars\" <uncleruprecht@ruprechtsguitars.com>",
          #from: "uncleruprecht@ruprechtsguitars.com",
          :subject => "New Ruprechts guitar article: #{@article.title.titleize}"


  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.article_all.subject
  #
  def article_all(article_id, user)
    @greeting = "Howdy"
    @article = Article.find( article_id )

    mail to: user,
         from: "\"Ruprecht's Guitars\" <uncleruprecht@ruprechtsguitars.com>",
         :subject => "New Ruprechts guitar article: #{@article.title.titleize}"
  end
end