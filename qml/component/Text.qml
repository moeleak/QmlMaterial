import QtQuick as Q
import QtQuick.Window
import Qcm.Material as MD

Q.Text {
    id: root
    property MD.typescale typescale: MD.Token.typescale.label_medium
    property bool prominent: false

    lineHeight: root.typescale.line_height
    font.pixelSize: root.typescale.size
    font.weight: root.prominent ? root.typescale.weight_prominent : root.typescale.weight
    font.letterSpacing: root.typescale.tracking

    antialiasing: true
    color: MD.MProp.textColor
    lineHeightMode: Q.Text.FixedHeight
    wrapMode: Q.Text.Wrap
    elide: Q.Text.ElideRight
    textFormat: Q.Text.PlainText
}
