class FayeGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)
  desc "This generator creates an faye.ru configuration file for faye server"
  def create_initializer_file
    copy_file "faye.ru", "faye.ru"
    copy_file "faye-notification.js", "app/assets/javascripts/faye-notification.js"
    copy_file "faye_helper.rb", "app/helpers/faye_helper.rb"
    append_file 'config/environment.rb', '

Faye_url = "http://localhost:9292/faye"

Faye_client = Faye::Client.new(Faye_url)'
    #system("rails g scaffold Notfifcation type:string object_id:integer description:text title:text user_id:integer channel:text seen:boolean")
  end
end