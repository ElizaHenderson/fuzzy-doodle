#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <iostream>
#include <fstream>
#include "player.h"
#include "savefiles.h"
int main(int argc, char *argv[])
{
    int num_lines;

    SaveFiles savefiles[50];

    ofstream file;
    file.open("fileinfo.txt");

    if(file.is_open())
    {
        while(getline(file, line))
            num_lines ++;
        file.close();
    }
    file.open("fileinfo.txt");
    if(file.is_open())
    {
        for(int i = 0; i < num_lines; ++i)
        {

        }
    }
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    for(int i = 0; i < num_lines; i++)
    {
        engine.rootContext()->setContextProperty("File"+i, &savefiles[i]);
    }
     engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
