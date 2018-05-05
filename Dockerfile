FROM openjdk:7

WORKDIR /root

#ANT
RUN mkdir -p /opt/ant/ \
	&& wget http://archive.apache.org/dist/ant/binaries/apache-ant-1.9.8-bin.tar.gz -P /opt/ant \
	&& tar -xvzf /opt/ant/apache-ant-1.9.8-bin.tar.gz -C /opt/ant/ \
	&& rm -f /opt/ant/apache-ant-1.9.8-bin.tar.gz

#IVY
RUN mkdir -p /opt/ivy \
	&& wget http://www-us.apache.org/dist//ant/ivy/2.5.0-rc1/apache-ivy-2.5.0-rc1-bin.tar.gz -P /opt/ivy \
	&& tar -xvzf /opt/ivy/apache-ivy-2.5.0-rc1-bin.tar.gz -C /opt/ivy/ \
	&& cp /opt/ivy/apache-ivy-2.5.0-rc1/ivy-2.5.0-rc1.jar /opt/ant/apache-ant-1.9.8/lib

ENV ANT_HOME=/opt/ant/apache-ant-1.9.8

ENV PATH="${PATH}:${HOME}/bin:${ANT_HOME}/bin"

COPY . /root
RUN chmod +x /root/wrapper.sh

ENTRYPOINT ["/root/wrapper.sh"]
