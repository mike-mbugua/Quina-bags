set -0 errexit

bundle install
bundle exec rake db:migrate

