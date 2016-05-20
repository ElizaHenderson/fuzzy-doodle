#include "player.h"

Player::Player(QObject *parent) : QObject(parent)
{ }

Player::Player(QString name, int doors, int level, int order) : m_name(name),
        m_doors(doors), m_levels(level), m_order(order)
{ }

void Player::LevelUp(int levels_gained)
{
    m_levels += levels_gained;
}
void Player::KickDoor()
{
    m_doors++;
}
