# Ruby optimalizations
function optimize_ruby() {
  current_version=$(echo $RUBY_VERSION | awk -F'-' '{print $2}')

  export RUBY_GC_MALLOC_LIMIT=110000000
  export RUBY_HEAP_FREE_MIN=20000
  export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1

  if [[ $current_version =~ 2.[1-9].* ]]; then
    unset RUBY_HEAP_MIN_SLOTS
    export RUBY_GC_HEAP_INIT_SLOTS=1100000
  else
    unset RUBY_GC_HEAP_INIT_SLOTS
    export RUBY_HEAP_MIN_SLOTS=1100000
  fi
}

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
