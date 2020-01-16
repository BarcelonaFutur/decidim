# Please, make sure you run this script from the Heroku console:
#
#   heroku run rails runner setup_sendgrid.rb
#
# This script requires an organization set up. It will apply the settings to
# the first organization it can find.

organization = Decidim::Organization.first
organization.smtp_settings = {
  from: ENV["EMAIL"],
  user_name: ENV["SENDGRID_USERNAME"],
  encrypted_password: Decidim::AttributeEncryptor.encrypt(ENV["SENDGRID_PASSWORD"]),
  address: "smtp.sendgrid.net",
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}
organization.save!
