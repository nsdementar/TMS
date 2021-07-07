FROM jenkins/jenkins:2.290
ARG HELM_VERSION=3.5.4
ARG DEBIAN_FRONTEND=noninteractive
ARG ANSIBLE_VERSION=2.10.7
RUN /usr/local/bin/install-plugins.sh ssh-slaves \
	email-ext \
	mailer \
	greenballs \
	simple-theme-plugin \
	parameterized-trigger \
	rebuild \
	github \
	mask-passwords \
	kubernetes \
    docker-plugin \
    slack \
    docker-workflow \
	blueocean \
    copyartifact \
	stashNotifier \
	show-build-parameters \
	credentials \
	configuration-as-code \
	command-launcher \
	external-monitor-job \
	ssh-agent \
    declarative-pipeline-migration-assistant \
	pipeline-stage-view
USER root
# hadolint ignore=DL3008,DL3013,DL4001,DL3014,DL4006,DL3016,DL3042
RUN apt-get update && apt-get install -y apt-transport-https \
  python-pip \
  ca-certificates \
  curl \
  gnupg2 \
  software-properties-common \
	&& wget https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz -P /tmp/ > /dev/null \
	&& tar -zxvf /tmp/helm-v${HELM_VERSION}-linux-amd64.tar.gz --directory /tmp/ \
	&& mv /tmp/linux-amd64/helm  /usr/local/bin/helm \
	&& curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add - \
	&& touch /etc/apt/sources.list.d/kubernetes.list \
	&& echo "deb http://apt.kubernetes.io/ kubernetes-xenial main" | tee -a /etc/apt/sources.list.d/kubernetes.list \
	&& curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey \
    && add-apt-repository \
    "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
    $(lsb_release -cs) \
    stable" \
	&& apt-get update \
	&& apt-get install -y kubectl \
	&& pip install boto3 \
		botocore \
	    ansible==${ANSIBLE_VERSION} \
		molecule \
		awscli \
		cryptography \
	&& git config --global core.sshCommand 'ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no' \
	&& apt-get -y install docker-ce-cli \
   && apt-get install rsync -y \
   && apt-get install shellcheck \
   && apt-get install npm -y \
   &&  npm install -g dockerfile_lint -y \
	&& echo "    StrictHostKeyChecking no" >> /etc/ssh/ssh_config \
	&& echo "    UserKnownHostsFile=/dev/null" >> /etc/ssh/ssh_config \
    && apt-get purge --auto-remove -yqq \
	&& apt-get clean \
	&& rm -rf \
    /var/lib/apt/lists/* \
    /tmp/* \
    /var/tmp/* \
    /usr/share/man \
    /usr/share/doc \
    /usr/share/doc-base	
RUN groupadd docker && usermod -aG docker jenkins && gpasswd -a jenkins docker
USER jenkins
