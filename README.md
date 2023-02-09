## Unique's Umbrel Community App Store

This repository is a community store for Umbrel. 

This app store features two additional feature over standard umbrel apps:

### Persistent Storage
Find the configuration data for the apps under umbrel/data/storage/unique-store/<app>/data. Re-install the app and this data will persist.

### Tweakable settings
Find a compose-mod/yml file for each app at umbrel/data/storage/unique-store/app/compose-mod.yml
Modify this file and re-install to change environments variables/volumes etc. to suit your needs. Delete the file and re-install the app at any time to revert to default.

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
* [Yacht](https://yacht.sh/)
  A container management UI with a focus on templates and 1-click deployments.
  
### Modified Apps
* [Code-Server](https://coder.com)
  Modified to now expose the umbrel directory. Use this as a web editor to modify improtant configuration files, for example, home-assistant.yml
  
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
