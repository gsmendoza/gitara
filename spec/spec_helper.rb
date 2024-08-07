require 'factory_bot'
require 'gitara'
require 'pry'

RSpec.configure do |config|
  include Gitara
  require 'factories'
  require 'support/app_tester'

  config.example_status_persistence_file_path = 'spec/support/examples.txt'

  config.before :each do
    test_tmp_dir.delete! if test_tmp_dir.exist? && ! run_lilypond?
    Gitara.instance_variable_set :@tab, nil
  end

  def test_tmp_dir
    Pathname.new('tmp/test')
  end
  
  def run_lilypond?
    ! ENV['RUN_LILYPOND'].nil?
  end
end
