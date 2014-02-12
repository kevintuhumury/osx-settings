# Ruby optimalizations
export RUBY_HEAP_MIN_SLOTS=1100000
export RUBY_GC_MALLOC_LIMIT=110000000
export RUBY_HEAP_FREE_MIN=20000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1

# Shortcut support for Rails 4.0+
function r() {
  if [ -f "./script/rails" ]; then
    ./script/rails $*
  else
    ./bin/rails $*
  fi
}

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

# Retrieve the Rails version of the current directory.
function rails_version {
  current_version=$(rails --version &> /dev/null | sed -E 's/Rails (.*)/ v\1/g')
  if [ $? ]; then
    echo "$gray$current_version$reset"
  fi
}