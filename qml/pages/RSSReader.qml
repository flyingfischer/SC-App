import QtQuick 2.0
import Sailfish.Silica 1.0

// placeholder for an RSS reader

SilicaListView {
    id: listView
    model: 15
    delegate: Item {
        id: myListItem

        BackgroundItem {
            id: contentItem
            width: parent.width
            Label {
                text: "Item " + index
            }
        }
    }
}
