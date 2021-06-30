import sys

from PySide6.QtGui import QGuiApplication
from PySide6.QtQml import QQmlApplicationEngine
from PySide6.QtQuickControls2 import QQuickStyle
from PySide6.QtWidgets import QApplication
from PySide6.QtQuick import QQuickView
from PySide6.QtCore import QUrl



if __name__ == '__main__':
    QQuickStyle.setStyle("Material")
    app=QGuiApplication(sys.argv)
    engine=QQmlApplicationEngine("res/qml/window.qml")
    sys.exit(app.exec())