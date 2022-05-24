# GoViolin

GoViolin is a web app written in Go that helps with violin practice.

Currently hosted on Heroku at https://go-violin.herokuapp.com/

GoViolin allows practice over both 1 and 2 octaves.

Contains:
* Major Scales
* Harmonic and Melodic Minor scales
* Arpeggios
* A set of two part scale duet melodies by Franz Wohlfahrt


To Build: <br />
Run Jenkins server with a Multi-branch discovery, the app will build from Jenkinsfile

To deploy:
1- Configure kubectl to a kubernetes cluster and run kubectl apply on manifests/pod.yml or manifests/deployment.yml
2- 
