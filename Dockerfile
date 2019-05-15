#sets base os
FROM ubuntu:18.04

#Adding myself as the author or maintainer
MAINTAINER Allen Fleming

#Adding readme file
ADD README.md /

#gets and installs update for os
RUN apt-get update
RUN apt update


#enables process to be accessed through the networkd
EXPOSE 8000
CMD ["--port 8000"]


#sets entry point 
ENTRYPOINT usr/bin/test

#runs command to print README file on build
RUN cat README.md



