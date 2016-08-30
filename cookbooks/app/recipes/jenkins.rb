apt_repository 'webupd8team' do
  uri 'ppa:webupd8team/java'
  components ['main']
end

execute 'set_silent_java_installation' do
  command 'echo "oracle-java8-installer shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections'
end

package 'oracle-java8-installer'

execute 'wget_jenkis_key' do
  command 'wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -'
end

execute 'add_repo_jenkins' do
  command 'sudo sh -c "echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list"'
end

execute 'apt-get update' do
  command 'apt-get update'
end

package 'jenkins'
