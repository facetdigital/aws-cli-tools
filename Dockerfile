FROM ubuntu:18.04
RUN apt-get update && apt-get install -y awscli

ARG PROJECT_DIR=/app
RUN mkdir -p $PROJECT_DIR
WORKDIR $PROJECT_DIR

CMD ["bash"]
