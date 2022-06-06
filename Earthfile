VERSION 0.6
FROM ubuntu:latest
WORKDIR /

build:
    ENV DEBIAN_FRONTEND noninteractive
    RUN apt update -y
    RUN apt install -y texlive-full

    COPY cv.tex ./
    COPY sections/ ./sections/

    RUN mkdir -p out
    RUN /usr/bin/pdflatex -output-directory ./out cv.tex
