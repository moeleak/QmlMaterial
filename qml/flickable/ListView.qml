import QtQuick as Q
import Qcm.Material as MD

Q.ListView {
    id: root

    clip: true
    property bool busy: false
    property bool expand: false

    reuseItems: true
    synchronousDrag: true
    pressDelay: MD.Token.flick.pressDelay
    maximumFlickVelocity: MD.Token.flick.maximumFlickVelocity
    flickDeceleration: MD.Token.flick.flickDeceleration
    boundsBehavior: Q.Flickable.StopAtBounds
    boundsMovement: Q.Flickable.StopAtBounds

    cacheBuffer: 96

    rebound: Q.Transition {}
    populate: Q.Transition {}

    leftMargin: 0
    rightMargin: 0
    topMargin: 0
    bottomMargin: 0
}
