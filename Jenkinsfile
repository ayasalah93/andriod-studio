node {
  def app
    stage('Clone repository') {
      checkout scm
    }
    stage('Deploy image') {
	    sh "chmod +x deploy.sh"
	    sh "export IMAGE_NAME='manar21/android-studio:junit-fabricplugin'"
	    sh "./deploy.sh"
    }
}
