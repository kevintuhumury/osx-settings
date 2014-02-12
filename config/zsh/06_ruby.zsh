# Rails 2.x shortcuts.
alias sc="script/console"
alias ss="script/server"
alias sg="script/generate"
alias sdb="script/dbconsole"

# Rails 3 shortcuts.
alias r="./script/rails"
alias b="gem install bundler && bundle install"

# Run rake db:migrate and fill the test database.
alias rdm="bundle exec rake db:migrate db:test:prepare"

# Run rake db:seed to fill the database.
alias rds="bundle exec rake db:seed"

# Show me the coverage reports.
alias cov="open coverage/index.html"
alias rcov="open coverage/rcov/index.html"

# Cucumber shortcuts (Rake is slow).
alias c="cucumber --require features"
alias wip="c --profile wip"

# Time RSpec and use document format.
alias specdoc="time rspec --format documentation"

# Restart Passenger.
alias rr="mkdir -p tmp && touch tmp/restart.txt"

# I hate having to type bundle exec.
alias be="bundle exec"
