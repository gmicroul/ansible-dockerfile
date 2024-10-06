FROM ubuntu:22.04
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Asia/Shanghai              
RUN echo "${TZ}" > /etc/timezone \                                                                  
&& ln -sf /usr/share/zoneinfo/${TZ} /etc/localtime \                                                
&& apt update \                                            
&& apt install -y tzdata \    
&& rm -rf /var/lib/apt/lists/*
RUN apt-get update && \
  apt-get install -y gcc python2-dev python2 python-dev-is-python3 libkrb5-dev && \
  apt-get install python3-pip -y && \
  pip3 install --upgrade pip && \
  pip3 install --upgrade virtualenv && \
  pip3 install pywinrm[kerberos] && \
  apt install krb5-user -y && \ 
  pip3 install pywinrm && \
  pip3 install ansible
