vlog() {
  vagrant ssh -c "tail -f /vagrant/$1/log/development.log" -- -t
}

# Platform related aliases
alias vclean='rake sync_git_repositories; vagrant up; vagrant ssh -c "cd /vagrant; start_services; start_apps; ./bin/run_bundle_install; ./bin/create_databases; start_apps" -- -t'
