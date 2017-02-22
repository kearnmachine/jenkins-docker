FROM jenkins:latest 
USER root

#add phantomjs
ENV PHANTOM_JS phantomjs-1.9.8-linux-x86_64
RUN apt-get update && apt-get install -y \
apt-transport-https \
build-essential \
chrpath \
libssl-dev \
libxft-dev \
libfontconfig1 \
libfontconfig1-dev \
libfreetype6 \
libfreetype6-dev 

RUN wget https://bitbucket.org/ariya/phantomjs/downloads/${PHANTOM_JS}.tar.bz2 && \
tar xvjf ${PHANTOM_JS}.tar.bz2 && \
rm ${PHANTOM_JS}.tar.bz2 && \
mv ${PHANTOM_JS} /usr/local/share && \
ln -sf /usr/local/share/${PHANTOM_JS}/bin/phantomjs /usr/local/bin

#launch4j 32bit libs (fix for windres: No such file or directory)
RUN apt-get update && apt-get install -y lib32z1 lib32ncurses5

RUN rm -rf /var/lib/apt/lists/*

USER ${user}
