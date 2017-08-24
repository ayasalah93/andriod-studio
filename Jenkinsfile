node {
  def app
    stage('Clone repository') {
      checkout scm
    }
    stage('Deploy image') { 
	    sh "kubectl run ubuntu --image=ubuntu:latest --replicas=2 --output=yaml --dry-run > "deployment-rc.yaml""
	    sh "kubectl create -f deployment-rc.yaml"
    }
}
