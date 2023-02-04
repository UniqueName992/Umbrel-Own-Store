## Unique's Umbrel Community App Store

This repository is a community store for Umbrel. Here are several additional apps for Umbrel.

### Apps
* [MQTT Explorer](http://mqtt-explorer.com/)
* [RM FakeCloud](https://github.com/ddvk/rmfakecloud)
* [Portainer Community Edition](https://www.portainer.io/)
* [Open Books](https://github.com/evan-buss/openbooks)

### Quick Start

To add this repository through the Umbrel user interface follow the following demo:


https://user-images.githubusercontent.com/10330103/197889452-e5cd7e96-3233-4a09-b475-94b754adc7a3.mp4

Apps can then be installed by browsing to the community app store and clicking open next to this one.

Alternatively, you can use the Umbrel CLI as described below.

To add an app store:
```
sudo ~/umbrel/scripts/repo add https://github.com/getumbrel/umbrel-community-app-store.git

sudo ~/umbrel/scripts/repo update
```

To install an app from the app store
```
sudo ~/umbrel/scripts/app install sparkles-hello-world
```

To remove an app store:
```
sudo ~/umbrel/scripts/repo remove https://github.com/getumbrel/umbrel-community-app-store.git
```
