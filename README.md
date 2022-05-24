# GoViolin

GoViolin is a web app written in Go that helps with violin practice.

Currently hosted on Heroku at https://go-violin.herokuapp.com/

GoViolin allows practice over both 1 and 2 octaves.

Contains:
* Major Scales
* Harmonic and Melodic Minor scales
* Arpeggios
* A set of two part scale duet melodies by Franz Wohlfahrt


<br />
To Build: <br />
<br />
Run Jenkins server with a Multi-branch discovery, the app will build from Jenkinsfile

<br />
<br />
To deploy: <br />
<br />
1- Configure kubectl to a kubernetes cluster and run kubectl apply on manifests/pod.yml or manifests/deployment.yml <br />
2- To get a public IP for the deployment, run:

```
kubectl expose deployment go-violin --type=LoadBalancer --name=violin-service
```

