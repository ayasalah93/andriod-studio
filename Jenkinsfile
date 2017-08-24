node {
  def app
    stage('Clone repository') {
      checkout scm
    }
    stage('Deploy image') { 
	    sh "kubectl create -f deployment.yaml"
	    sh "kubectl create -f svc.yaml"
    }
}
