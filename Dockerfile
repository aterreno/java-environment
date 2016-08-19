FROM alpine:latest

RUN apk --update --no-cache add openjdk8 bash git libstdc++

WORKDIR /

RUN mkdir -p /src
RUN git clone https://github.com/aterreno/demo.git /src/demo

WORKDIR /src/demo
RUN ./gradlew tasks

CMD ["bash"]
