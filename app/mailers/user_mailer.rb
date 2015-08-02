class UserMailer < ApplicationMailer
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.contactus.subject
  #
  def contactus
    @greeting = "Hi"

    mail to: "to@example.org"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.newsletter.subject
  #
  def newsletter(movie)
    @movie = movie
    @greeting = "Hi"
    #@products = Product.all

    mail to: "to@example.org"
  end
end
