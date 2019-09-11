# Upgrade to Jenkins Pipelines

### Getting Started

(You may first want to update all plugins installed on Jenkins)

### Setup New Spring-PetClinic Pipeline in Jenkins

1. Disable existing Jenkins stand alone job
2. If you did not install the Jenkins pipeline at startup, do now.
3. Select [New Item](http://192.168.33.10:8080/view/all/newJob) option on Jenkins homepage
4. Enter the name "spring.petclinic.pipeline" and select the "Pipeline" job type
5. Select definition "Pipeline script from SCM"
6. Enter the url of your forked spring-petclinic repository
7. Save and Run


### Setup Repository Jenkinsfile
1. Copy [demo_base/Jenkinsfile](demo_base/Jenkinsfile) to the root directory of your repository
2. Commit the changes and push to Github
