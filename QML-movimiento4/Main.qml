import QtQuick 2.4
import Ubuntu.Components 1.3

/*!
    \brief MainView with a Label and Button elements.
*/

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "qml-movimiento4.larreamikel"

    width: units.gu(55)
    height: units.gu(90)

        Image {
            id: root
            source: "images/background.png"
            width: units.gu(55)
            height: units.gu(90)
            fillMode: Image.PreserveAspectCrop

            Image {
                id: pole
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                source:"images/pole.png"
            }

            Image {
                id: wheel
                anchors.centerIn: parent
                source: "images/pinwheel.png"
                Behavior on rotation {
                    NumberAnimation {
                        duration: 250
                    }
                }
            }

            MouseArea {
                anchors.fill: parent
                onClicked: wheel.rotation += 90
            }
        }



//    }
}
