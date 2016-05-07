#ifndef PLAYER_H
#define PLAYER_H

#include <QObject>

class Player : public QObject
{
    Q_OBJECT
public:
    explicit Player(QObject *parent = 0);
    Player(QString name, int doors = 0, int level = 0, int order = 0);
    void LevelUp(int levels_gained);
    void KickDoor();
    int GetOrder(){return m_order;}
    int GetLevel(){return m_level;}
    int GetDoor(){return m_doors;}
    QString GetName(){return m_name;}

signals:

public slots:

private:
    int m_doors;
    int m_level;
    QString m_name;
    int m_order;
};

#endif // PLAYER_H
