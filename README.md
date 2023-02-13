# Helmet Detection Model Deployment on Signle Node
#### Prerequisites

- Python3

- Docker 

#### Installation

```bash
$ docker build . -t helmet_yolov5_torchserve:v1
$ docker run -p 8080:8080 -p 8081:8081 helmet_yolov5_torchserve:v1


$ curl -X POST  "http://localhost:8081/models?url=./model_store/helmet_detection.mar&model_name=helmet_detection"
$ curl -X PUT "http://0.0.0.0:8081/models/helmet_detection?min_worker=3"

$ cd 
$ curl -T 1.jpg 'http://localhost:8080/predictions/helmet_detection'


$ python3 -m pip install jupyter      # only need to install once if you don't have jupyter 
$ jupyter notebook


$ docker container ls
$ docker stop [the helmet container' CONTAINER ID]

```

