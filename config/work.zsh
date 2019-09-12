alias vagrant-clean='vagrant up; vagrant ssh -c "cd /vagrant; start_services; start_apps; run_bundle_install; create_databases; seed_databases; start_apps" -- -t'
alias eid='vagrant-clean'
alias platform='rake sync_git_repositories; vagrant-clean'
