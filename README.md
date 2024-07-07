# ubuntu-20-04-common-build

## Build Image

```
docker build . -t ubuntu-20-04-common-build
```

## Start container

```
docker run -d --rm --name ubuntu-20-dev-env ubuntu-20-04-common-build
```

-d: avoid the terminal to be stuck after docker run 