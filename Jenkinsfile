node {
  def app
    stage('Clone repository') {
      checkout scm
    }
    stage('Deploy image') {
	    sh "export $DEPLOYMENT_NAME=andriod"
	    sh "export IMAGE_NAME=docker.io/manar21/android-studio:junit-fabricplugin"
	    sh "chmod +x deploy"
	    sh "./deploy"
    }
}
