<img src="https://img.shields.io/docker/cloud/build/philippmayrth/ansible-runner.svg?style=popout-square" >
<img src="https://img.shields.io/docker/pulls/philippmayrth/ansible-runner.svg?style=popout-square" >
<img src="https://img.shields.io/docker/stars/philippmayrth/ansible-runner.svg?style=popout-square" >

# Intro

This is a docker image which contains Ansible stuff so you can test your server configuration with a CI system


# CI

## Jenkins

Example `Jenkinsfile`

```
pipeline {
    agent {
        docker {
            image 'philippmayrth/ansible-runner:20190711a@sha256:8b112a35f01415c89c4dfd44a59ab65cd2b8d77e35c72b9b72daea4d320ced69'
        }
    }
    stages {
        stage('Lint config') {
            steps {
                sh 'ansible-lint server.yml'
            }
        }
    }
}
```

Note: Please make sure to always pin the image version with a hash. Everyone with write access to DockerHub could inject malicious code and potentialy gain access to your entire infrastructure depending on how exactly you use this docker image.
