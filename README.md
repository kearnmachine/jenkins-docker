# jenkins-docker
jenkins docker image with added support 
- lib32z1, lib32ncurses5: for launch4j maven plugin
- chromium: for karmajs tests with headless (requires --cap-add=SYS_ADMIN ) 
- node, yarn: for webpack build