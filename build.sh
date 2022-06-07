docker build -t bia .
aws ecr get-login-password --region us-east-2 --profile bia | docker login --username AWS --password-stdin 177888962404.dkr.ecr.us-east-2.amazonaws.com/bia
docker tag bia:latest 177888962404.dkr.ecr.us-east-2.amazonaws.com/bia:latest
push do docker 177888962404.dkr.ecr.us-east-2.amazonaws.com/bia:latest
