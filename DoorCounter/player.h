#ifndef PLAYER_H
#define PLAYER_H

#include <QObject>

class Player : public QObject
{
    Q_OBJECT
public:
    explicit Player(QObject *parent = 0);
    Player(QString name, int doors, int level, int order);
    void LevelUp(int levels_gained);
    void KickDoor();
    int GetOrder(){return m_order;}
    int GetLevel(){return m_levels;}
    int GetDoor(){return m_doors;}
    QString GetName(){return m_name;}
    void SetOrder(int order){m_order = order;}
signals:

public slots:

private:
    int m_doors;
    int m_levels;
    QString m_name;
    int m_order;
};

#endif // PLAYER_H
