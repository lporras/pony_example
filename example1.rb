# Export password env variable
# $export PASSWORD=password

require 'pony'

Pony.mail({
  :to => 'lporras16@gmail.com',
  :body => "Correo desde pony",
  :subject => "WTM Example",
  :via => :smtp,
  :via_options => {
    :address              => 'smtp.gmail.com',
    :port                 => '587',
    :enable_starttls_auto => true,
    :user_name            => 'lporras16@gmail.com',
    :password             => ENV['PASSWORD'],
    :authentication       => :plain, # :plain, :login, :cram_md5, no auth by default
    :domain               => "localhost.localdomain" # the HELO domain provided by the client to the server
  }
})