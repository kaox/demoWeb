pipeline { 
    agent any
    environment{
        GIT_URL = 'https://github.com/kaox/demoWeb.git'
    }
    stages {
        stage('Clone') { 
            steps { 
                sh 'git clone ${GIT_URL}' 
            }
        }
        stage('Build') { 
            steps {
                dir("demoWeb"){
                    sh 'mvn -B package -DskipTests' 
                }
            }
        }
        stage('Test'){
            steps {
                dir("demoWeb"){
                    sh 'mvn -B test'
                }
            }
        }
    }
    post {
        success {
            echo 'Exito'
            archiveArtifacts artifacts: '**/*.war'
            deleteDir()
        }
        failure {
            echo 'Error'
            deleteDir()
        }
    }
}