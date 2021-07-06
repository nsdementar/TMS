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
- Do previous task as a separate pipeline. It should be triggered after successful linting.
- Create multibranch pipeline to validate your PRs with your Jenkinsfile created above.
