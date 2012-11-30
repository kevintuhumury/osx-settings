# Rails 2.x shortcuts.
alias sc="script/console"
alias ss="script/server"
alias sg="script/generate"
alias sdb="script/dbconsole"

# Rails 3 shortcuts.
alias r="./script/rails"
alias b="gem install bundler && bundle install"

# Run rake db:migrate and fill the test database.
alias rdm="rake db:migrate db:test:prepare"

# Run rake db:seed to fill the database.
alias rds="rake db:seed"

# Show me the coverage reports.
alias cov="open coverage/index.html"

# Cucumber shortcuts (Rake is slow).
alias c="bundle exec ./script/cucumber -r features"
alias wip="c --profile wip"

# Time RSpec and use document format.
alias specdoc="time rspec -fd"

# Restart Passenger.
alias rr="touch tmp/restart.txt"

# I love mvim.
export BUNDLER_EDITOR="mvim"
export GEMEDITOR="mvim"

# Ruby Enterprise Edition optimalizations
export RUBY_HEAP_MIN_SLOTS=1100000
export RUBY_GC_MALLOC_LIMIT=110000000
export RUBY_HEAP_FREE_MIN=20000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1

# Install Bundler when it isn't installed yet.
# Run bundle install when the bundle isn't complete yet.
# Run any arguments passed to bundle exec.
function b() {
  gem which bundler > /dev/null 2>&1 || gem install bundler --no-ri --no-rdoc
  bundle check || bundle install
  if [ $1 ]; then
    bundle exec $*
  fi
}
