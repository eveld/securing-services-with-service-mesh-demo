.PHONY: cluster apps expose

cluster:
	yard up

app:
	yard tools
	# kubectl apply -f work

expose-app:
	yard expose --service-name svc/api --port 9090:9090

expose-malicious:
	yard expose --service-name svc/malicious --port 9091:9090

cleanup:
	docker ps -aq | xargs docker rm -f || true
	docker volume ls -q | xargs docker volume rm || true
	docker network ls -q | xargs docker network rm || true