### HW28

- Create DSL pipeline to validate shell scripts(all .sh scripts under provided location). You can use your previous scripts. Checker tool - https://github.com/koalaman/shellcheck(you can use any you like).

![Result](https://i.ibb.co/9VD79bk/Install-shellcheck.jpg)
![Result](https://i.ibb.co/QQwSt9x/Shellcheck-0.jpg)
![Result](https://i.ibb.co/02vdWW2/Shellcheck-1.jpg)
![Result](https://i.ibb.co/QFNQ1VW/Shellcheck-2.jpg)

- Create DSL pipeline to validate Dockerfile. Use https://github.com/projectatomic/dockerfile_lint or anything else you like. Dockerfile to validate - Dockerfile you use to build image for jenkins.

![Result](https://i.ibb.co/CKbm74f/Dockerfile-lint-0.jpg)
![Result](https://i.ibb.co/HzBjLbS/Dockerfile-lint-1.jpg)
![Result](https://i.ibb.co/5KWB826/Dockerfile-lint-2.jpg)
![Result](https://i.ibb.co/r6PnZ2T/Dockerfile-lint-3.jpg)

- Update previous DSL with new stage - build new jenkins image(Only if lint successful). Tag - ${VERSION}_${GIT_HASH}_{JENKINS_BUILD_NUMBER}.  ${VERSION} -  should be set as parameter.
- Update previous pipeline with new stage - push docker to your registry. It should be a private image, so provide creds(as jenkins secret) for docker login.

![Result](https://i.ibb.co/dbfvHXd/Docker-image0.jpg)
![Result](https://i.ibb.co/p15k5Ty/Docker-image1.jpg)
![Result](https://i.ibb.co/W35vqH5/Docker-image2.jpg)
![Result](https://i.ibb.co/0qg2dc5/Docker-image3.jpg)
![Result](https://i.ibb.co/Jsytt1f/Docker-image4.jpg)
![Result](https://i.ibb.co/HG3fGpj/Docker-image5.jpg)
![Result](https://i.ibb.co/mhWwnPM/Dockerhub-1.jpg)
![Result](https://i.ibb.co/6g8YpC1/Dockerhub-2.jpg)

- Do previous task as a separate pipeline. It should be triggered after successful build.

![Result](https://i.ibb.co/fNwBZZ8/Docker-build01.jpg)
![Result](https://i.ibb.co/JyFcDpQ/Docker-build02.jpg)
![Result](https://i.ibb.co/SwwjrTg/Docker-build03.jpg)
![Result](https://i.ibb.co/rp9prWK/Docker-deploy01.jpg)
![Result](https://i.ibb.co/MsLwm8S/Docker-deploy02.jpg)

- Create multibranch pipeline to validate your PRs with your Jenkinsfile created above.

![Result](https://i.ibb.co/YyP8rM3/Multibranch-pipeline01.jpg)
![Result](https://i.ibb.co/Sdr75bP/Multibranch-pipeline02.jpg)
