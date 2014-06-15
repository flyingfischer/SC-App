import QtQuick 2.0
import Sailfish.Silica 1.0

// Hardcoded right now: Content of this page will come dynamically from the server

Page {
    id: newsSelect
    property string topic

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        id: flick
        anchors.fill: parent

        PullDownMenu {
            MenuItem {
                text: qsTr("Search news")
                onClicked: pageStack.push(Qt.resolvedUrl("SearchNews.qml"))
            }
        }
        PushUpMenu {
            MenuItem {
                text: qsTr("To the top")
                onClicked: flick.scrollToTop()
            }
        }

        // Tell SilicaFlickable the height of its content.
        contentHeight: column.height

        VerticalScrollDecorator {}

        // Place our content in a Column.  The PageHeader is always placed at the top
        // of the page, followed by our content.
        Column {
            id: column

            width: newsSelect.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("News")
            }

            Button {
                id: select1
                text: qsTr("Anaesthesia")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("News.qml"), {topic: "Anaesthesia"});
                }
            }
            Button {
                id: select2
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Cardiology")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("News.qml"), {topic: "Cardiology"});
                }
            }
            Button {
                id: select3
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Cochrane")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("News.qml"), {topic: "Cochrane"});
                }
            }
            Button {
                id: select4
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Dermatology")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("News.qml"), {topic: "Dermatology"});
                }
            }
            Button {
                id: select5
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Endocrinology")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("News.qml"), {topic: "Endocrinology"});
                }
            }
            Button {
                id: select6
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Gastroenterology")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("News.qml"), {topic: "Gastroenterology"});
                }
            }
            Button {
                id: select7
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Gynecology")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("News.qml"), {topic: "Gynecology"});
                }
            }
            Button {
                id: select8
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Hematology")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("News.qml"), {topic: "Hematology"});
                }
            }
            Button {
                id: select9
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("HNO")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("News.qml"), {topic: "HNO"});
                }
            }
            Button {
                id: select10
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Internal medicine")
                onClicked: {
                    pageStack.push(Qt.resolvedUrl("News.qml"), {topic: "Internal medicine"});
                }
            }
        }
    }
}
