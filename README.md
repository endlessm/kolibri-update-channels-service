# kolibri-update-channels-service

Script to update Kolibri channels in Endless OS when the computer gets connected to the Internet.

## Installing

Run:

```
sudo ./setup --baseurl "http://your-kolibri-server" --action install
```

## Uninstalling

Run:

```
sudo ./setup --action uninstall
```

## Testing

This service is only ran when the computer gets connected to any network. But you can start it by hand by running:

```
sudo rm -f /var/lock/kolibri-update-channels.service.stamp
sudo systemctl start kolibri-update-channels
```

To see more details of what the service is doing, run:

```
journalctl -xef --unit kolibri-update-channels.service
```
