# build application in docker and update in oketo via kubernetes
- docker login
- docker build -t <docker username>/application .
- docker tag <docker username>/application <docker username>/application
- docker push <docker username>/application
  
- kubectl apply -f deployment.yml
- kubectl apply -f service.yml
