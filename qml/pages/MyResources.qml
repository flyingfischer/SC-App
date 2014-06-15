import QtQuick 2.0
import Sailfish.Silica 1.0

// Hardcoded right now: Content of this page will come dynamically from the server

Page {
    id: myresources
    property string contentgroup

    SilicaListView {
        id: listView
        model: 20
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Search licensed content")
                onClicked: pageStack.replace(Qt.resolvedUrl("SearchContent.qml"))
            }
            MenuItem {
                text: qsTr("Search journal")
                onClicked: pageStack.replace(Qt.resolvedUrl("SearchEZB.qml"))
            }
        }
        PushUpMenu {
            MenuItem {
                text: qsTr("To the top")
                onClicked: listView.scrollToTop()
            }
        }

        VerticalScrollDecorator {}

        header: PageHeader {
            title: qsTr(contentgroup)
        }

        delegate: ListItem {
            id: listItem

            ValueButton {
                label: "Result"
                value: index
                onClicked: console.log("Clicked: " + label + " " + value)
            }
        }
    }
}
