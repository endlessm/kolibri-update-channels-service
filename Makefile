install:
	install -D 50-kolibri-update-channels -t /etc/NetworkManager/dispatcher.d/
	install -D kolibri-update-channels -t /usr/local/bin/
	install -D kolibri-update-channels.service -t /usr/local/lib/systemd/system/
	echo "KOLIBRI_UPDATE_CHANNELS_BASEURL=$(BASEURL)" > environment-file
	install -D environment-file -t /usr/local/etc/kolibri-update-channels/
	$(MAKE) system-reload

uninstall:
	rm -f /etc/NetworkManager/dispatcher.d/50-kolibri-update-channels
	rm -f /usr/local/bin/kolibri-update-channels
	rm -f /usr/local/lib/systemd/system/kolibri-update-channels.service
	rm -fr /usr/local/etc/kolibri-update-channels
	$(MAKE) system-reload

system-reload:
	systemctl daemon-reload
	systemctl restart NetworkManager-dispatcher.service
