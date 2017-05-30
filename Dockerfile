FROM jenkins:latest
ARG user=jenkins

USER root

#launch4j 32bit libs (fix for windres: No such file or directory)
RUN apt-get update && apt-get install -y lib32z1 lib32ncurses5

RUN rm -rf /var/lib/apt/lists/*

USER ${user}
