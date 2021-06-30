import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Layouts 2.15

ApplicationWindow {
    id:root
    visible: true
    width: 800
    height: 600
    TabBar {
        id: bar
        width: parent.width
        TabButton {
            text: qsTr("107")
        }
        TabButton {
            text: qsTr("InE")
        }
    }
    StackLayout {
        anchors.top: bar.bottom
        anchors.bottom: parent.bottom
        width: parent.width
        currentIndex: bar.currentIndex
        Item {
            id: tab107
            TabBar {
                id: tab107Bar
                width: parent.width

                Repeater {
                    model: ["First", "Second", "Third", "Fourth", "Fifth"]

                    TabButton {
                        text: modelData
                        width: Math.max(100, bar.width / 3-30)
                    }
                }
            }
            StackLayout {
                anchors.top: tab107Bar.bottom
                anchors.bottom: parent.bottom
                width: parent.width
                currentIndex: tab107Bar.currentIndex

                Rectangle {
                    id: tab107First
                    anchors.fill: parent
                    color: 'green'
                }
                Rectangle {
                    id: tab107Second
                    anchors.fill: parent
                    color: 'red'
                }
                Rectangle {
                    id: tab107Third
                    anchors.fill: parent
                    color: 'yellow'
                }
                Rectangle {
                    id: tab107Fourth
                    anchors.fill: parent
                    color: 'teal'
                }
                Rectangle {
                    id: tab107Fifth
                    anchors.fill: parent
                    color: 'plum'
                }
            }
        }
        Item {
            id: tabInE
        }
    }
}