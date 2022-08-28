#!/bin/bash

#Set env varibale to use minikube docker engine
eval $(minikube docker-env)

cd shop
docker build -t shop:0.0.1 .


cd ../cart
docker build -t cart:0.0.1 .


cd ../checkout
docker build -t checkout:0.0.1 .


cd ../payment
docker build -t payment:0.0.1 .
