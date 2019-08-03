alias eid='vagrant up; vagrant ssh -c "cd /vagrant; start_services; start_apps; run_bundle_install; seed_databases; start_apps" -- -t'
alias platform='rake sync_git_repositories; vagrant up; vagrant ssh -c "cd /vagrant; start_services; start_apps; ./bin/run_bundle_install; ./bin/create_databases; start_apps" -- -t'
