import QtQuick as Q

import Qcm.Material as MD

Q.Loader {
    id: root
    onItemChanged: {
        // workaround for implicitWidth/Height not being set correctly when switching to null
        if (!item instanceof Q.Item) {
            MD.Util.forceSetImplicitWidth(root, 0);
            MD.Util.forceSetImplicitHeight(root, 0);
        }
    }
}
