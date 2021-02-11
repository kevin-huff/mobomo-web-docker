FROM hashicorp/terraform

RUN apk add --no-cache python3 \
	python3-dev \
	py3-pip \
	build-base \
	libffi-dev \
	openssl-dev \
	rust \
	cargo 
RUN pip3 install awscli && pip3 install awsebcli
RUN apk add --no-cache --repository http://dl-cdn.alpinelinux.org/alpine/v3.10/main/ nodejs=10.19.0-r0 npm=10.19.0-r0 yarn
RUN mkdir ~/.ssh/ && echo -e "Host github.com\n\tStrictHostKeyChecking no\n" > ~/.ssh/config