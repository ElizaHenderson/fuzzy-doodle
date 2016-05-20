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
    char line[255];
    SaveFiles savefiles[50];

    ifstream file;
    file.open("files.txt");
    char * token_4;
    int count = 0;
    int file_index = 0;
    char * begin_token;

    if(file.is_open())
    {
        while(file.getline(line, 255))
        {            
            while(begin_token != NULL)
            {
                if(count <= 3)
                {
                    begin_token = strtok(line, ",");
                    if(count == 0)
                    {
                        savefiles[file_index].SetName(begin_token);
                        count++;
                        begin_token = strtok(line, ",");
                    }
                    else if(count == 2)
                    {
                        savefiles[file_index].SetImg(begin_token);
                        count++;
                        begin_token = strtok(line, ",");
                    }
                    else
                    {
                        savefiles[file_index].SetPlayerCount((int)begin_token);
                        count++;
                        begin_token = strtok(line, ",");
                    }
                }
                else
                {
                    char * token_2;
                    char * token_3;


                    token_2 = strtok(line, ",");
                    token_3 = strtok(line, ",");
                    token_4 = strtok(line, ",");
                    Player * player = new Player(begin_token, (int)token_2, (int)token_3, (int)token_4);
                    savefiles[file_index].AddPlayer(player);
                }
            }
            begin_token = token_4;
            file_index++;
            count = 0;
        }
    }
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    //for(int i = 0; i < file_index; i++)
    //{
        //QString filename = "sFile" + i;
        engine.rootContext()->setContextProperty("sFile", savefiles);
    //}
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
