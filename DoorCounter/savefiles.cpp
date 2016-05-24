#include "SaveFiles.h"

SaveFiles::SaveFiles()
{
    user_name = "aa";
    img_name = "nullptr";
    m_player_count = 0;

}
SaveFiles::SaveFiles(QString names, QString img_names) :
    user_name(names), img_name(img_names)
{

}

SaveFiles::~SaveFiles()
{
}
void SaveFiles::SetPlayerCount(int players)
{
    m_player_count = players;
}
int SaveFiles::GetPlayerCount()
{
    return m_player_count;
}

void SaveFiles::AddPlayer(Player * player)
{
    players[m_player_count] = player;
}

void SaveFiles::SetImg(QString img)
{
    img_name.clear();
    img_name = img;
}

QString SaveFiles::GetImg()
{
    return img_name;
}

void SaveFiles::SetUser(QString user)
{
    user_name.clear();
    user_name = user;
}

QString SaveFiles::GetUser()
{
    return user_name;
}
