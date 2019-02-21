deploy-prod:
	docker-compose run --rm ansible ansible-playbook deploy.yml -i inventories/prod -e "ansistrano_release_version=`date -u +%Y%m%d%H%M%SZ` repo_branch=$(filter-out $@,$(MAKECMDGOALS))"

deploy-preprod:
	docker-compose run --rm ansible ansible-playbook deploy.yml -i inventories/preprod -e "ansistrano_release_version=`date -u +%Y%m%d%H%M%SZ` repo_branch=$(filter-out $@,$(MAKECMDGOALS))"

deploy-dev:
	docker-compose run --rm ansible ansible-playbook deploy.yml -i inventories/dev -e "ansistrano_release_version=`date -u +%Y%m%d%H%M%SZ` repo_branch=$(filter-out $@,$(MAKECMDGOALS))"
