class FayeGenerator < Rails::Generators::Base
  source_root File.expand_path("../templates", __FILE__)
  desc "This generator creates an faye.ru configuration file for faye server"
  def create_initializer_file
    copy_file "faye.ru", "faye.ru"
  end
end