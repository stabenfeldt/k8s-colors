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


###  gcloud sql instances describe staging
