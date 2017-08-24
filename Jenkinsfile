node {
  def app
    stage('Clone repository') {
      checkout scm
    }
    stage('Deploy image') { 
	    sh "kubectl create -f 'andriod-deployment.yaml'"
	    sh "kubectl create -f 'andriod-svc.yaml'"
    }
}
