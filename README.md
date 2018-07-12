# README

## Running the app locally
```
docker-compose up -d
docker-compose run colors rake db:create db:migrate
open http://localhost:3000
```

# Building and pushing the image to remote repository
```
docker build . -t stabenfeldt/colors:latest
docker push
```

## Create a GCP cluster
```
gcloud container clusters create color-cluster --num-nodes=2
```


## Setup PostgreSQL at GCP
Follow instructions in https://cloud.google.com/sql/docs/postgres/connect-kubernetes-engine?authuser=1
Take note of the following:
```
Database Instance ID
DB_USER
DB_PASSWORD
INSTANCE_CONNECTION_NAME
```

Update your config/database.yml and k8s/colors.yml with these values.


## Deploy your app
```
kubectl apply -f k8s/colors.yml
kubectl get pods

	NAME                    READY     STATUS    RESTARTS   AGE
	colors-d9f744dc-8svw5   2/2       Running   0          58m
	colors-d9f744dc-bpwzm   2/2       Running   0          58m

kubectl logs colors-d9f744dc-8svw5 -c colors
	=> Booting Puma
	=> Rails 5.2.0 application starting in development
	=> Run `rails server -h` for more startup options
	Puma starting in single mode...
	* Version 3.11.4 (ruby 2.4.4-p296), codename: Love Song
	* Min threads: 5, max threads: 5
	* Environment: development
	* Listening on tcp://0.0.0.0:3000

```

###  gcloud sql instances describe staging
