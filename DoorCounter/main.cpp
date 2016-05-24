#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <iostream>
#include <fstream>
#include "player.h"
#include "savefiles.h"
#include <string.h>
using std::string;
using std::ofstream;
using std::ifstream;
int main(int argc, char *argv[])
{
    QList<Player> Players;
    QGuiApplication app(argc, argv);
    Player player1;
    Player player2;
    Player player3;
    Player player4;
    Player player5;
    Player player6;
    Player player7;
    Player player8;
    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("Player1", &player1);
    engine.rootContext()->setContextProperty("Player2", &player2);
    engine.rootContext()->setContextProperty("Player3", &player3);
    engine.rootContext()->setContextProperty("Player4", &player4);
    engine.rootContext()->setContextProperty("Player5", &player5);
    engine.rootContext()->setContextProperty("Player6", &player6);
    engine.rootContext()->setContextProperty("Player7", &player7);
    engine.rootContext()->setContextProperty("Player8", &player8);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
