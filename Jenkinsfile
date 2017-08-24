node {
  def app
    stage('Clone repository') {
      checkout scm
    }
    stage('Deploy image') {
	    sh "kubectl run ubuntu --image=ubuntu --replicas=2 --output=yaml --dry-run > 'ubuntu-rc.yaml'"
	    sh "kubectl create -f 'ubuntu-rc.yaml'"
    }
}
