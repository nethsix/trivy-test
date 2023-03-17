FROM ubuntu:focal

RUN apt-get update
RUN apt-get install -y curl
RUN curl -s https://packagecloud.io/install/repositories/pagerduty/rundeck/script.deb.sh | bash
RUN sed -i 's/ubuntu\/\ focal/any\/\ any/' /etc/apt/sources.list.d/pagerduty_rundeck.list
RUN apt-get update
# RUN apt-get install rundeck-cli=2.0.3-1
RUN apt-get install rundeck-cli=0.1.24-1

