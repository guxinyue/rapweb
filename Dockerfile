
FROM hub.c.163.com/library/nginx:1.10.3
 
RUN mkdir -p /usr/local/node
#WORKDIR /usr/local/node
 
COPY . /home/rap2-dolores
COPY default.conf /etc/nginx/conf.d/default.conf
#COPY node-v8.12.0-linux-x64 /usr/local/node
 
RUN ln -s /home/rap2-dolores/node-v8.12.0-linux-x64/bin/node /usr/local/bin/node
 
RUN ln -s /home/rap2-dolores/node-v8.12.0-linux-x64/bin/npm /usr/local/bin/npm

#WORKDIR /home
#RUN mkdir -p /home/rap2-dolores
#WORKDIR /home/rap2-dolores
#COPY /Users/bipaohu/pro/gitpro/rap/rap2-dolores /home/

