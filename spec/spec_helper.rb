require 'factory_girl'
require 'gitara'
require 'pry'

RSpec.configure do |config|
  include Gitara
  require 'factories'
  require 'support/app_tester'

  config.before :each do
    test_tmp_dir.delete! if test_tmp_dir.exists?
    Gitara.instance_variable_set :@tab, nil
  end

  def test_tmp_dir
    Pow('tmp/test')
  end
end
