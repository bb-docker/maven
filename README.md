# maven
For maven build 

## Getting Started
These instructions will get you to build maven environment in your docker. See Installation for notes on how to build your maven environment on a live system.

### Installation
1. Install [Docker](https://www.docker.com/).
2. Download the source from public [Docker Hub](https://hub.docker.com/r/bananabb/maven/) or run Usage tag provided.

### Usage
```
docker pull bananabb/maven:3.8.8
docker run -itd -v [Target Build Directory]:/data --name maven-build bananabb/maven
docker exec -it maven-build mvn clean install
```

## License
MIT © [BananaBb](https://github.com/BananaBb)