node {
    stage('git repo') {
    git credentialsId: 'tomcat', url: 'https://github.com/pankajpandey9/JunitExample.git'
    echo 'Hello World'
     }
    stage('maven test') {
    sh '''
    mvn test
    echo "maven Testing done"
    '''
    }
    stage('maven packaging') {
    sh '''
    mvn package
    echo "maven packaging done"
    '''
    }
    stage('Publish Junit results') {
        step([$class: 'JUnitResultArchiver', testResults: 'target/surefire-reports/*.xml'])
    }
}
