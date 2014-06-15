import QtQuick 2.0
import Sailfish.Silica 1.0

// Hardcoded right now: Content of this page will come dynamically from the server

Page {
    id: news
    property string topic

    SilicaListView {
        id: listView
        model: 15
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: "Search " + topic
                onClicked: pageStack.replace(Qt.resolvedUrl("SearchNews.qml"), {topic: topic})
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
            title: qsTr(topic)
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
