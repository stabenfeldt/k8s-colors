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


###  gcloud sql instances describe staging
