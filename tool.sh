docker build . -t auto-jenkins

docker run --name jenkins -p 8081:8080 -p 6080:6080 -p 50000:50000 -v /var/run/docker.sock:/var/run/docker.sock  -v $(which docker):/bin/docker -v /mnt:/mnt -v /Users/aa/demo/golang-/jenkins_home:/var/jenkins_home  -d auto-jenkins
