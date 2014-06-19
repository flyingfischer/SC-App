# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = SC-App

CONFIG += sailfishapp

SOURCES += src/SC-App.cpp

OTHER_FILES += qml/SC-App.qml \
    qml/cover/CoverPage.qml \
    qml/pages/SecondPage.qml \
    rpm/SC-App.changes.in \
    rpm/SC-App.spec \
    rpm/SC-App.yaml \
    translations/*.ts \
    SC-App.desktop \
    qml/pages/Topics.qml \
    qml/pages/Settings.qml \
    qml/pages/SearchNews.qml \
    qml/pages/SearchEZB.qml \
    qml/pages/RSSReader.qml \
    qml/pages/NewsSelect.qml \
    qml/pages/News.qml \
    qml/pages/MyResourcesSelect.qml \
    qml/pages/MyResources.qml \
    qml/pages/MainPage.qml \
    qml/pages/Alerts.qml \
    qml/pages/About.qml \
    qml/img/ampel_gruen.png \
    qml/img/ampel_gelb.png \
    qml/img/ampel_rot.png \
    qml/js/stateless.js \
    qml/pages/SearchContent.qml

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n
TRANSLATIONS += translations/SC-App-de.ts

