function delPodByAppName {
	APPNAME=$1
	PODNAME=$(kubectl get pod -l app=${APPNAME} -o 'jsonpath={.items[0].metadata.name}')
	kubectl delete pod $PODNAME
}

function getPodByAppName {
	APPNAME=$1
	PODNAME=$(kubectl get pod -l app=${APPNAME} -o 'jsonpath={.items[0].metadata.name}')
	echo -n $PODNAME
}
