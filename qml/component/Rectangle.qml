import QtQuick as Q
import Qcm.Material as MD

Q.Rectangle {
    property MD.corners corners: radius

    bottomLeftRadius: corners.bottomLeft
    bottomRightRadius: corners.bottomRight
    topLeftRadius: corners.topLeft
    topRightRadius: corners.topRight
}
