## Unique's Umbrel Community App Store

This repository is a community store for Umbrel. Here are several additional apps for Umbrel.

### Apps
* [MQTT Explorer](http://mqtt-explorer.com/)
  See the data traveling through your MQTT server
* [RM FakeCloud](https://github.com/ddvk/rmfakecloud)
  Replace the Remarkable clloud with a self hsoted one
* [Portainer Community Edition](https://www.portainer.io/)
  Advanced Container COntrol
* [Open Books](https://github.com/evan-buss/openbooks)
  Download Ebooks from the IIRC Highway
* [DIY Hue Emulator](https://diyhue.org/)
  Emulate a Philips Hue Smart Light System
### Quick Start

To add this repository through the Umbrel user interface follow the following demo:


https://user-images.githubusercontent.com/10330103/197889452-e5cd7e96-3233-4a09-b475-94b754adc7a3.mp4

Use `https://github.com/UniqueName992/Uniques-Umbrel-App-Store` for the store address.

Apps can then be installed by browsing to the community app store and clicking open next to this one.

Alternatively, you can use the Umbrel CLI as described below.

To add this app store:
```
sudo ~/umbrel/scripts/repo add https://github.com/UniqueName992/Uniques-Umbrel-App-Store

sudo ~/umbrel/scripts/repo update
```

To install an app from the app store
```
sudo ~/umbrel/scripts/app install unique-portainerce
```

To remove this app store:
```
sudo ~/umbrel/scripts/repo remove https://github.com/UniqueName992/Uniques-Umbrel-App-Store
```
