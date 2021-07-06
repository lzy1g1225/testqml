import QtQuick 2.9
import QtQuick.Dialogs 1.2
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import QtGraphicalEffects 1.0

UntitledWindow {
    id:root
    width: 340
    height: txtMessage.implicitHeight+btnOk.implicitHeight+105
    color: "transparent"
    modality: Qt.WindowModal

    property string msg
    property string confirmWord: "确定"

    signal ok()

    Shortcut {
        sequences: ["Return","Enter"]
        onActivated: {
            close()
            ok()
        }
    }

    Rectangle {
      id: rect
      anchors.fill: parent
      color: Qt.rgba(0.65,0.81,0.96,0.3)
      anchors.margins: 10
      radius: 8
    }

    DropShadow {
      anchors.fill: rect
      horizontalOffset: 3
      verticalOffset: 3
      radius: rect.radius
      samples: 8
      source: rect
      color: "black"
      Behavior on radius { PropertyAnimation { duration: 100 } }
    }

    Rectangle {
        color: "white"
        radius: 8
        anchors.fill: rect
        Text {
            id:txtMessage
            width: parent.width-50
            anchors.top: parent.top
            anchors.topMargin: 40
            wrapMode: Text.WrapAnywhere
            anchors.horizontalCenter: parent.horizontalCenter
            text: msg
            horizontalAlignment: Text.AlignHCenter
            textFormat:Text.RichText

            font.family: qsTr("微软雅黑")
            font.pixelSize: 20
            color: "#222"
            height: 80
            onLinkActivated: Qt.openUrlExternally(link)
        }

        ColorButton {
            id:btnOk
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 25
            width: 140
            height: 30
            radius: 5
            padding: 5
            textColor: "white"
            defColor: "#6695f6"
            onClicked: {
                close()
                ok()
            }
            font.family: qsTr("微软雅黑")
            text: confirmWord
            font.pixelSize: 13
        }

    }

}
