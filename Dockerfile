FROM atlassian/bitbucket-server:7.2.0
USER root
COPY atlassian-agent.jar /opt/atlassian/bitbucket/
ENV JAVA_OPTS="-javaagent:/opt/atlassian/bitbucket/atlassian-agent.jar ${JAVA_OPTS}"
