import QtQuick as Q
import Qcm.Material as MD

Q.GridView {
    id: root

    clip: true

    synchronousDrag: true
    reuseItems: true
    pressDelay: MD.Token.flick.pressDelay
    maximumFlickVelocity: MD.Token.flick.maximumFlickVelocity
    flickDeceleration: MD.Token.flick.flickDeceleration
    boundsBehavior: Q.Flickable.StopAtBounds
    boundsMovement: Q.Flickable.StopAtBounds
    rebound: Q.Transition {}
}
