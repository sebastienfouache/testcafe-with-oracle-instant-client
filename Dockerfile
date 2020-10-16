# Container image that runs your code
FROM ubuntu:latest

ENTRYPOINT ["ls", "-l"]

# # INSTALL UBUNTU
# FROM node:latest AS ORACLE_NODE

# #INSTALL LIBAIO1 & UNZIP (NEEDED FOR STRONG-ORACLE)
# RUN apt-get update \
#  && apt-get install -y libaio1 \
#  && apt-get install -y build-essential \
#  && apt-get install -y unzip \
#  && apt-get install -y curl

# #ADD ORACLE INSTANT CLIENT
# RUN mkdir -p opt/oracle
# ADD ./oracle/linux/ .

# RUN unzip instantclient-basic-linux.x64-12.2.0.1.0.zip -d /opt/oracle \
#  && unzip instantclient-sdk-linux.x64-12.2.0.1.0.zip -d /opt/oracle  \
#  && mv /opt/oracle/instantclient_12_2 /opt/oracle/instantclient \
#  && ln -s /opt/oracle/instantclient/libclntsh.so.12.2 /opt/oracle/instantclient/libclntsh.so \
#  && ln -s /opt/oracle/instantclient/libocci.so.12.2 /opt/oracle/instantclient/libocci.so

# ENV LD_LIBRARY_PATH="/opt/oracle/instantclient"
# ENV OCI_HOME="/opt/oracle/instantclient"
# ENV OCI_LIB_DIR="/opt/oracle/instantclient"
# ENV OCI_INCLUDE_DIR="/opt/oracle/instantclient/sdk/include"
# ENV OCI_VERSION=12

# RUN echo '/opt/oracle/instantclient/' | tee -a /etc/ld.so.conf.d/oracle_instant_client.conf && ldconfig

# FROM ORACLE_NODE AS ORACLE_NODE_CHROME

# RUN npm install -g chromedriver  --allow-root --unsafe-perm=true
# RUN apt update
# RUN apt install -y wget
# RUN wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
# RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
# RUN apt update
# RUN apt install -y netcat
# RUN apt install -y google-chrome-stable

# FROM ORACLE_NODE_CHROME

# RUN npm install -g testcafe

# COPY entry-point.sh /
# RUN chmod a+x /entry-point.sh

# ENTRYPOINT [ "/entry-point.sh" ]
# CMD []
