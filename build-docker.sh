docker build -t dsandor/aws_golang_builder:v1 .
docker build -t dsandor/aws_golang_builder:latest .
docker tag dsandor/aws_golang_builder:v1 dsandor/aws_golang_builder:latest
docker push dsandor/aws_golang_builder:latest