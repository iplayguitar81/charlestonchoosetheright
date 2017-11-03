class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contact_us.subject
  #


  def contact_us( admin, name, email, phone, contact, question, newsletter )
    @greeting = "Howdy"
    @name=name
    @email=email
    @phone=phone
    @contact=contact
    @question=question
    @newsletter=newsletter

    mail to: "#{admin}",
         from: "\"TrailBlazersFans.com Visitor Message\" <admin@trailblazersfans.com>",
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
         from: "\"Trailblazersfans.com Thanks You!\" <admin@trailblazersfans.com>"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.article_admin.subject
  #
  def article_admin(story_id, user)
    @greeting = "Howdy #{user}"
    @story = Story.find( story_id )

    mail  to: user,
          from: "\"Trailblazersfans.com\" <admin@trailblazersfans.com>",
          #from: "admin@trailblazersfans.com",
          :subject => "New Trailblazersfans.com article: #{@story.title.titleize}"


  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.article_all.subject
  #
  def article_all(story_id, user)
    @greeting = "Howdy"
    @story = Story.find( story_id )

    mail to: user,
         from: "\"Trailblazersfans.com\" <admin@trailblazersfans.com>",
         :subject => "New Trailblazersfans.com article: #{@story.title.titleize}"
  end
end