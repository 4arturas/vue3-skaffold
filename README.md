# vue3


```bash
docker build -t vue3 .
````
```bash
docker tag vue3 vue3
````
```bash
docker run -it -p 5173:5173 --name vue3 vue3
````
```bash
docker exec -it vue3 /bin/bash
````

```bash
docker build -t vue3 . && docker tag vue3 vue3 && docker run -it -p 5173:5173 --name vue3 vue3
````

```bash
docker rmi vue3 --force
````
```bash
docker rm vue3 --force
````


# Skaffold
```bash
skaffold dev --port-forward
````
http://127.0.0.1:9999
