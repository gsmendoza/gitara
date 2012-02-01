require 'gitara'
require 'parslet/convenience'
require 'parslet/rig/rspec'
require 'pry'

RSpec.configure do |config|
  include Gitara

  config.before :each do
    test_tmp_dir.delete! if test_tmp_dir.exists?
    Gitara.instance_variable_set :@tab, nil
  end

  def debug?
    $debug.tap do
      $debug = false
    end
  end

  def debug!
    $debug = true
  end

  def test_tmp_dir
    Pow('tmp/test')
  end
end
