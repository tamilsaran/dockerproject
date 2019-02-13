pipeline {
    agent any
    stages {
        stage ('checkout') {
            steps {
		checkout scm
            }
        }
        stage ('Build') {
            steps {
                sh 'mvn -f java-app/pom.xml clean install' 
            }
        }
    }
}
