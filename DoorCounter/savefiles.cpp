#include "SaveFiles.h"

SaveFiles::SaveFiles()
{
    name = "aa";
    user_name = "nullptr";
    img_name = "nullptr";
}
SaveFiles::SaveFiles(QString names, QString img_names, QString user_names) :
    name(names), img_name(img_names), user_name(user_names)
{

}

SaveFiles::~SaveFiles()
{
}

void SaveFiles::SetName(QString new_name)
{
    name = new_name;
}

QString SaveFiles::GetName()
{
    return name;
}

void SaveFiles::SetImg(QString img)
{
    img_name = img;
}

QString SaveFiles::GetImg()
{
    return img_name;
}

void SaveFiles::SetUser(QString user)
{
    user_name = user;
}

QString SaveFiles::getUser()
{
    return user_name;
}
