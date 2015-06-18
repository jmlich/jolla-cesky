all: compile

srcdir = .
DESTDIR =
prefix = $(DESTDIR)/usr
datadir = $(prefix)/share
# for i in $(ls -1 *ts); do echo -n $(echo $i |sed 's/\.ts/\.qm/';); echo -n " ";  done
TARGETS = alarm-ui-sk_SK.qm apkd-sk_SK.qm as-daemon-sk_SK.qm calculator-sk_SK.qm calendar-sk_SK.qm clock-sk_SK.qm commhistoryd-sk_SK.qm contactsd-sk_SK.qm contacts-sk_SK.qm csd-sk_SK.qm devicelock-sk_SK.qm gallery-ambience-sk_SK.qm gallery-facebook-sk_SK.qm gallery-sk_SK.qm jolla-camera-sk_SK.qm jolla-email-sk_SK.qm jolla-keyboard-sk_SK.qm jolla-mediaplayer-sk_SK.qm jolla-signon-ui-sk_SK.qm jolla-store-sk_SK.qm libjollasignonuiservice_qt5-sk_SK.qm lipstick-jolla-home-facebook-sk_SK.qm lipstick-jolla-home-sk_SK.qm lipstick-jolla-home-twitter-notif-sk_SK.qm lipstick-jolla-home-twitter-sk_SK.qm lipstick-sk_SK.qm messages-sk_SK.qm nemo-transfer-engine-sk_SK.qm notes-sk_SK.qm qmf-notifications-sk_SK.qm remotesecurity-sk_SK.qm sailfish-browser-sk_SK.qm sailfish_components_accounts_qt5-sk_SK.qm sailfish_components_bluetooth_qt5-sk_SK.qm sailfish_components_contacts_qt5-sk_SK.qm sailfish_components_email_qt5-sk_SK.qm sailfish_components_gallery_qt5-sk_SK.qm sailfish_components_pickers_qt5-sk_SK.qm sailfish_components_timezone_qt5-sk_SK.qm sailfish_components_weather_qt5-sk_SK.qm sailfish-maps-sk_SK.qm sailfish-office-sk_SK.qm sailfishsilica-qt5-sk_SK.qm sailfish_transferengine_plugins-sk_SK.qm sailfish_transferengine-sk_SK.qm settings-accounts-activesync-sk_SK.qm settings-accounts-sk_SK.qm settings-backup-sk_SK.qm settings-bluetooth-sk_SK.qm settings-network-sk_SK.qm settings-sailfish-browser-sk_SK.qm settings-sailfishos-sk_SK.qm settings-sk_SK.qm settings-sync-sk_SK.qm settings-system-sk_SK.qm simkit-sk_SK.qm startupwizard-sk_SK.qm tutorial-sk_SK.qm voicecall-sk_SK.qm weather-sk_SK.qm
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
	$(INSTALLDATA) $(srcdir)/sk.conf $(datadir)/jolla-supported-languages/

clean:
	rm -f *.qm