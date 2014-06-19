import QtQuick 2.0
import Sailfish.Silica 1.0


Page {
    id: mainPage

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        anchors.fill: parent

        // PullDownMenu and PushUpMenu must be declared in SilicaFlickable, SilicaListView or SilicaGridView
        PullDownMenu {
            MenuItem {
                text: qsTr("About")
                onClicked: pageStack.push(Qt.resolvedUrl("About.qml"))
            }
            MenuItem {
                text: qsTr("Settings")
                onClicked: pageStack.push(Qt.resolvedUrl("Settings.qml"))
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: mainPage.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Swissconsortium.ch")
            }
            Button {
                id: myResources
                text: qsTr("MyResources")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("MyResourcesSelect.qml"));
                }
            }
            Button {
                id: news
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("News")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("NewsSelect.qml"))
                }
            }
            Button {
                id: alerts
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Alerts")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("Alerts.qml"))
                }
            }

            Label {
                 text: '---'
                 font.pixelSize: Theme.fontSizeSmall
                 anchors.horizontalCenter: parent.horizontalCenter
                 color: Theme.secondaryColor
             }

            Button {
                id: myFavorites
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Follow News")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("RSSReader.qml"))
                }
            }
        }
    }
}
