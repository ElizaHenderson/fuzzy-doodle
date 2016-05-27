#ifndef PLAYER_H
#define PLAYER_H

#include <QObject>

class Player : public QObject
{
    Q_OBJECT
public:
    explicit Player(QObject *parent = 0);
    Player(QString name, int doors, int level, int order);

signals:

public:

public slots:
    void LevelUp(int levels_gained);
    void KickDoor();

    int GetOrder();
    int GetLevel();
    int GetDoor();
    QString getName();

    void SetOrder(int order);
    void setName(QString name);

private:
    QString m_name;
    int m_doors;
    int m_levels;
    int m_order;
};

#endif // PLAYER_H
