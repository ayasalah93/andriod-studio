node {
  def app
    stage('Clone repository') {
      checkout scm
    }
    stage('Deploy image') {
	    sh "chmod +x deploy"
	    sh "./deploy"
    }
}
