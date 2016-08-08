import QtQuick 2.4
import Ubuntu.Components 1.3

/*!
    \brief MainView with a Label and Button elements.
*/

//MainView {
//    // objectName for functional testing purposes (autopilot-qt5)
//    objectName: "mainView"

//    // Note! applicationName needs to match the "name" field of the click manifest
//    applicationName: "qml-movimiento4.larreamikel"

//    width: units.gu(100)
//    height: units.gu(75)

//    Page {
//        header: PageHeader {
//            id: pageHeader
//            title: i18n.tr("QML-movimiento4")
//            StyleHints {
//                foregroundColor: UbuntuColors.orange
//                backgroundColor: UbuntuColors.porcelain
//                dividerColor: UbuntuColors.slate
//            }
//        }

//        Label {
//            id: label
//            objectName: "label"
//            anchors {
//                horizontalCenter: parent.horizontalCenter
//                top: pageHeader.bottom
//                topMargin: units.gu(2)
//            }

//            text: i18n.tr("Hello..")
//        }

//        Button {
//            objectName: "button"
//            anchors {
//                horizontalCenter: parent.horizontalCenter
//                top: label.bottom
//                topMargin: units.gu(2)
//            }
//            width: parent.width
//            text: i18n.tr("Tap me!")
//            onClicked: {
//                label.text = i18n.tr("..world!")
//            }
//        }
//    }
//}

//Cambio para commit

MainView {
    // objectName for functional testing purposes (autopilot-qt5)
    objectName: "mainView"

    // Note! applicationName needs to match the "name" field of the click manifest
    applicationName: "qml-movimiento3.larreamikel"

    width: units.gu(100)
    height: units.gu(75)

 //   Page {
//        header: PageHeader {
//            id: pageHeader
//            title: i18n.tr("Qml-movimiento")
//            StyleHints {
//                foregroundColor: UbuntuColors.orange
//                backgroundColor: UbuntuColors.porcelain
//                dividerColor: UbuntuColors.slate
//            }
//        }




        Image {
            id: root
            source: "images/background.png"
            width: units.gu(100)
            height: units.gu(75)

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
