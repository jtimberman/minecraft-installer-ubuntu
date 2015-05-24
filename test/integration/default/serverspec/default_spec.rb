require 'serverspec'

set :backend, :exec

describe 'minecraft-installer-ubuntu' do
  describe command('which java') do
    its(:stdout) { should match(/\/usr\/bin\/java/) }
  end

  describe command('java -version') do
    its(:exit_status) { should eq 0 }
    its(:stdout) { should match('OpenJDK') }
  end
end
