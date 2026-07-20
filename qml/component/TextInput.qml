import QtQuick as Q
import Qcm.Material as MD

Q.TextInput {
    id: root
    property MD.typescale typescale: MD.Token.typescale.body_large
    property bool prominent: false

    font.capitalization: Q.Font.MixedCase

    Q.Binding {
        root.font.pixelSize: root.typescale.size
        root.font.weight: root.prominent && root.typescale.weight_prominent ? root.typescale.weight_prominent : root.typescale.weight
        root.font.letterSpacing: root.typescale.tracking
        restoreMode: Q.Binding.RestoreNone
    }

    cursorDelegate: MD.CursorDelegate {}

    color: MD.MProp.textColor
    selectionColor: MD.Token.color.primary
    selectedTextColor: MD.Token.color.getOn(selectionColor)
    verticalAlignment: Q.TextInput.AlignVCenter
}
