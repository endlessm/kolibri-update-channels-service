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

This service is ran automatically approximately every hour by a timer, but you can run it manually by running:

```
sudo systemctl start kolibri-update-channels
```

To see more details of what the service is doing, run:

```
journalctl -xef --unit kolibri-update-channels.service
```

To see when the next update is due to be executed, run:

```
systemctl list-timers kolibri-update-channels.timer
```
