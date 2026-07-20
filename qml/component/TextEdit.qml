import QtQuick as Q
import Qcm.Material as MD

Q.TextEdit {
    id: root
    property MD.typescale typescale: MD.Token.typescale.label_medium
    property bool prominent: false

    Q.Binding {
        when: typescale
        root.font.pixelSize: typescale ? typescale?.size : 16
        root.font.weight: typescale ? (root.prominent ? typescale.weight_prominent : typescale.weight) : Q.Font.Normal
        root.font.letterSpacing: typescale ? typescale.tracking : 1
        restoreMode: Q.Binding.RestoreNone
    }

    cursorDelegate: MD.CursorDelegate {}

    color: MD.MProp.textColor
    selectionColor: MD.Token.color.primary
    selectedTextColor: MD.Token.color.getOn(selectionColor)
    wrapMode: Q.Text.Wrap
    textFormat: Q.Text.PlainText
}
