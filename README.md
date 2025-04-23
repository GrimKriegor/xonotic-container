# grimkriegor/xonotic

Container image for the Xonotic server.

Available for `linux/amd64` and `linux/arm/v8`.

## Container registry

https://hub.docker.com/r/grimkriegor/xonotic


## Getting the image

### Pulling from registry

#### Pull the latest stable version

```bash
docker pull grimkriegor/xonotic
```

#### Pull a specific version

```bash
docker pull grimkriegor/xonotic:0.8.6-r0
```

### Building

```bash
git clone https://github.com/GrimKriegor/xonotic-container.git
cd xonotic-container
git checkout <version> # optional
docker build -t grimkriegor/xonotic:<version> .
```

## Running

#### Run the latest stable version

```bash
docker run -it \
    --name xonotic \
    -v "$HOME/Xonotic/data:/server/data" \
    -p "26000:26000/udp" \
    grimkriegor/xonotic
```
