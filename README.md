# ztncui-docker

Docker image for [key-networks/ztncui] (a web user interface of ZeroTier self-host controller), derived from [key-networks/ztncui-containerized], adding the ability to expose ZeroTier controller's RESTful API to the outside of container.

## Usage

```sh
docker run -d --name ztncui -e HTTP_ALL_INTERFACES=yes -e EXPOSE_ZT_CONTROLLER_API=yes -p 3080:3000 -p 127.0.0.1:9993:9993 --cap-add=NET_ADMIN cczu/ztncui
```

See [key-networks/ztncui-containerized] for more info.

[key-networks/ztncui]: https://github.com/key-networks/ztncui
[key-networks/ztncui-containerized]: https://github.com/key-networks/ztncui-containerized
