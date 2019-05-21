#sets base os
FROM ubuntu:18.04

#Adding myself as the author or maintainer
MAINTAINER Allen Fleming

#Adding readme file
ADD README.md /

#gets and installs update for os
RUN apt-get update
RUN apt update

#installs python3 with yes flag
RUN apt install -y python3

#exposes port 8000
EXPOSE 8000

#runs python webserver
CMD python3 -m http.server




