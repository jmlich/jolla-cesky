all: compile

srcdir = .
DESTDIR =
prefix = $(DESTDIR)/usr
datadir = $(prefix)/share
# for i in $(ls -1 *ts); do echo -n $(echo $i |sed 's/\.ts/\.qm/';); echo -n " ";  done
TARGETS = alarm-ui-cs_CZ.qm apkd-cs_CZ.qm as-daemon-cs_CZ.qm calculator-cs_CZ.qm calendar-cs_CZ.qm clock-cs_CZ.qm commhistoryd-cs_CZ.qm contacts-cs_CZ.qm contactsd-cs_CZ.qm csd-cs_CZ.qm devicelock-cs_CZ.qm gallery-ambience-cs_CZ.qm gallery-cs_CZ.qm gallery-facebook-cs_CZ.qm jolla-camera-cs_CZ.qm jolla-email-cs_CZ.qm jolla-keyboard-cs_CZ.qm jolla-mediaplayer-cs_CZ.qm jolla-signon-ui-cs_CZ.qm jolla-store-cs_CZ.qm libjollasignonuiservice_qt5-cs_CZ.qm lipstick-cs_CZ.qm lipstick-jolla-home-cs_CZ.qm lipstick-jolla-home-facebook-cs_CZ.qm lipstick-jolla-home-twitter-cs_CZ.qm lipstick-jolla-home-twitter-notif-cs_CZ.qm messages-cs_CZ.qm nemo-transfer-engine-cs_CZ.qm notes-cs_CZ.qm qmf-notifications-cs_CZ.qm remotesecurity-cs_CZ.qm sailfish-browser-cs_CZ.qm sailfish_components_accounts_qt5-cs_CZ.qm sailfish_components_bluetooth_qt5-cs_CZ.qm sailfish_components_contacts_qt5-cs_CZ.qm sailfish_components_email_qt5-cs_CZ.qm sailfish_components_gallery_qt5-cs_CZ.qm sailfish_components_pickers_qt5-cs_CZ.qm sailfish_components_timezone_qt5-cs_CZ.qm sailfish_components_weather_qt5-cs_CZ.qm sailfish-maps-cs_CZ.qm sailfish-office-cs_CZ.qm sailfishsilica-qt5-cs_CZ.qm sailfish_transferengine-cs_CZ.qm sailfish_transferengine_plugins-cs_CZ.qm settings-accounts-activesync-cs_CZ.qm settings-accounts-cs_CZ.qm settings-backup-cs_CZ.qm settings-bluetooth-cs_CZ.qm settings-cs_CZ.qm settings-network-cs_CZ.qm settings-sailfish-browser-cs_CZ.qm settings-sailfishos-cs_CZ.qm settings-sync-cs_CZ.qm settings-system-cs_CZ.qm simkit-cs_CZ.qm startupwizard-cs_CZ.qm tutorial-cs_CZ.qm voicecall-cs_CZ.qm weather-cs_CZ.qm
INSTALLDATA = install -p -m 644
MKDIR = mkdir -p
    
compile: $(TARGETS)
	@echo Done

%.qm: %.ts
	/usr/lib/qt5/bin/lrelease -silent $^ -qm $@
#	lrelease-qt5 -silent $^ -qm $@

install: all
	$(MKDIR) $(datadir)/translations/
	$(MKDIR) $(datadir)/jolla-supported-languages/
	$(INSTALLDATA) $(srcdir)/*.qm $(datadir)/translations/
	$(INSTALLDATA) $(srcdir)/cs.conf $(datadir)/jolla-supported-languages/

clean:
	rm -f *.qm