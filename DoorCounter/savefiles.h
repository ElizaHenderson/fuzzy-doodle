#ifndef SAVEFILES_H
#define SAVEFILES_H
#include <string.h>
#include <string>
#include <QtGlobal>
#include <QObject>
#include "player.h"
using std::string;

class SaveFiles : public QObject
{
    Q_OBJECT
public:

    SaveFiles();
    SaveFiles(QString names, QString img_names);
    virtual ~SaveFiles();
public slots:
    void SetName(QString new_name);
    QString GetName();
    void SetImg(QString img);
    QString GetImg();
    void SetUser(QString user);
    QString getUser();
    void AddPlayer(Player * player);
    void SetPlayerCount(int players);
    int GetPlayerCount();
private:

    QString user_name;
    QString img_name;
    int m_player_count;
    Player * players[];
};

#endif // SAVEFILES_H
