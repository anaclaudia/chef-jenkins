task default: %w[test]

task :test do
  system("bundle exec kitchen verify")
end

namespace :jenkins do
  task :root_password do
    system("bundle exec kitchen exec -c 'sudo cat /var/lib/jenkins/secrets/initialAdminPassword'")
  end
end
