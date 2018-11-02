# ztncui-docker

Docker image for [key-networks/ztncui] (a web user interface of ZeroTier self-host controller), derived from [key-networks/ztncui-containerized], adding the ability to expose ZeroTier controller's RESTful API to the outside of container.

## Feature

Everything is exact the same as [key-networks/ztncui-containerized] except:

- If environment variable `EXPOSE_ZT_CONTROLLER_API` is set to `yes`, the RESTful API of ZeroTier controller will be exposed at `0.0.0.0:9994` of the container.

## Usage

```sh
docker run --name ztncui -e HTTP_ALL_INTERFACES=yes -e EXPOSE_ZT_CONTROLLER_API=yes -p 3080:3000 -p 127.0.0.1:9993:9993 --cap-add=NET_ADMIN cczu/ztncui
```

See [key-networks/ztncui-containerized] for more info.

[key-networks/ztncui]: https://github.com/key-networks/ztncui
[key-networks/ztncui-containerized]: https://github.com/key-networks/ztncui-containerized
