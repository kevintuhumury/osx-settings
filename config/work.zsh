vlog() {
  vagrant ssh -c "tail -f /vagrant/$1/log/development.log" -- -t
}

# Platform related aliases
alias ddy-clean='rake sync_git_repositories; vagrant up; vagrant ssh -c "cd /vagrant; start_services; start_apps; ./bin/run_bundle_install; ./bin/create_databases; start_apps" -- -t'
alias vclean='vagrant up; vagrant ssh -c "cd /vagrant; start_services; start_apps; run_bundle_install; create_databases; seed_databases; start_apps" -- -t'
