FROM java:8

LABEL version="0.0.1"
LABEL "com.github.actions.name"="DependencyCheck"
LABEL "com.github.actions.description"="Runs DependencyCheck Against Repot"
LABEL com.github.actions.icon="shield"
LABEL com.github.actions.color="Red"
LABEL "maintainer"="JGamblin <Jerry.Gamblin@Gmail.com>"
LABEL "repository"="http://github.com/jgamblin/DepCheck-Action"

RUN apt-get update && apt-get install -y \
  curl \
  wget


RUN wget -O /tmp/current.txt http://jeremylong.github.io/DependencyCheck/current.txt && current=$(cat /tmp/current.txt) && wget https://dl.bintray.com/jeremy-long/owasp/dependency-check-$current-release.zip && unzip dependency-check-$current-release.zip


ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
