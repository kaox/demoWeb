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
        stage('Deploy'){
            steps {
                dir("demoWeb"){
                    //sh 'curl -T /var/jenkins_home/workspace/demo/demoWeb/target/demo.war http://admin:admin@ef573abf.ngrok.io/manager/text/deploy?path=/prueba&update=true'
                    sh 'wget "http://admin:admin@ef573abf.ngrok.io/manager/text/deploy?path=/prueba&update=true&war=file:/var/jenkins_home/workspace/demo/demoWeb/target/demo.war" -O - -q'
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