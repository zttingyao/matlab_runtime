FROM ubuntu:trusty
MAINTAINER tingyao <nclxwen@gmail.com>
#安装python等相关依赖
RUN apt-get update && apt-get install -y wget python-dev python-setuptools python-numpy python-scipy zlib1g-dev python-matplotlib python-nose 
RUN easy_install pip
RUN apt-get install -y libpng-dev libfreetype6-dev pkg-config zip python-vtk
RUN mkdir /mcr-install
WORKDIR /mcr-install
#下载matlab runtime
RUN wget -nv http://www.mathworks.com/supportfiles/downloads/R2015b/deployment_files/R2015b/installers/glnxa64/MCR_R2015b_glnxa64_installer.zip
RUN unzip MCR_R2015b_glnxa64_installer.zip
