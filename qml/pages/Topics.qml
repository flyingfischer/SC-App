import QtQuick 2.0
import Sailfish.Silica 1.0

// Hardcoded right now: Content of this page will come dynamically from the server

Page {
    id: topics
    property Item parentPage

    // To enable PullDownMenu, place our content in a SilicaFlickable
    SilicaFlickable {
        id: flick
        anchors.fill: parent

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

            width: topics.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Select topic")
            }
            Button {
                id: select0
                text: qsTr("All topics")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    parentPage.topic = "All topics";
                    pageStack.pop();
                }
            }
            Button {
                id: select1
                text: qsTr("Anaesthesia")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    parentPage.topic = "Anaesthesia";
                    pageStack.pop();
                }
            }
            Button {
                id: select2
                text: qsTr("Cardiology")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    parentPage.topic = "Cardiology";
                   pageStack.pop()
                }
            }
            Button {
                id: select3
                text: qsTr("Cochrane")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    parentPage.topic = "Cochrane";
                   pageStack.pop()
                }
            }
            Button {
                id: select4
                text: qsTr("Dermatology")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    parentPage.topic = "Dermatology";
                   pageStack.pop()
                }
            }
            Button {
                id: select5
                text: qsTr("Endocrinology")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    parentPage.topic = "Endocrinology";
                   pageStack.pop()
                }
            }
            Button {
                id: select6
                text: qsTr("Gastroenterology")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    parentPage.topic = "Gastroenterology";
                   pageStack.pop()
                }
            }
            Button {
                id: select7
                text: qsTr("Gynecology")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    parentPage.topic = "Gynecology";
                   pageStack.pop()
                }
            }
            Button {
                id: select8
                text: qsTr("Hematology")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    parentPage.topic = "Hematology";
                   pageStack.pop()
                }
            }
            Button {
                id: select9
                text: qsTr("HNO")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    parentPage.topic = "HNO";
                   pageStack.pop()
                }
            }
            Button {
                id: select10
                text: qsTr("Internal medicine")
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    parentPage.topic = "Internal medicine";
                   pageStack.pop()
                }
            }
        }
    }
}
