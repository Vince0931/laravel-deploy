deploy:
	docker-compose run --rm ansible ansible-playbook deploy.yml -i inventories/prod -e "ansistrano_release_version=`date -u +%Y%m%d%H%M%SZ` repo_branch=$(filter-out $@,$(MAKECMDGOALS))"
