step 1:

Create the Kubernetes cluster.
```
yard up
```

step 2:

Create the applications.
```
yard tools
kubectl apply -f work/apps
yard expose --service-name svc/api --port 9090:9090
```

step 3:

Deploy malicious application.
```
yard tools
kubectl apply -f work/malicious
yard expose --service-name svc/malicious --port 9091:9090
```

step 4:

Define intentions.