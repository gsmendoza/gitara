require 'gitara'


RSpec.configure do |config|
  include Gitara

  config.before :each do
    test_tmp_dir.delete! if test_tmp_dir.exists?
  end

  def test_tmp_dir
    Pow('tmp/test')
  end
end
