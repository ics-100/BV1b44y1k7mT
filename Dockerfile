FROM ubuntu:22.04

LABEL maintainer="Guxiaobai <sikuan.gu@gmail.com>"

RUN sed -i -r 's/([a-zA-Z-]+\.)?(archive|security)\.ubuntu\.com/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list

RUN apt-get update -y

# bochs
RUN apt-get install -y --no-install-recommends bochs bochs-x bximage

# complie
RUN apt-get install -y --no-install-recommends build-essential gdb nasm make

# Clang
RUN apt-get install -y --no-install-recommends clang llvm lldb

# Tools
RUN apt-get install -y --no-install-recommends bsdmainutils file less xxd iputils-ping

WORKDIR /usr/src/app