#ifndef PLAYER_H
#define PLAYER_H

#include <QObject>

class Player : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString m_name READ getName WRITE setName)
    Q_PROPERTY(int m_levels READ GetLevel)
    Q_PROPERTY(int m_doors READ GetDoor)

public:
    explicit Player(QObject *parent = 0);
    Player(QString name, int doors, int level);


public slots:
    void LevelUp(int levels_gained);
    void KickDoor();
    void setName(QString name);
    int GetLevel();
    int GetDoor();
    QString getName();

private:
    QString m_name;
    int m_doors;
    int m_levels;
};

#endif // PLAYER_H
