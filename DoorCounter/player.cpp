#include "player.h"

Player::Player(QObject *parent) : QObject(parent)
{ }

Player::Player(QString name= "Bob", int doors = 0, int level = 1, int order = 0) : m_name(name),
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

int Player::GetOrder(){return m_order;}
int Player::GetLevel(){return m_levels;}
int Player::GetDoor(){return m_doors;}
QString Player::getName(){return m_name;}

void Player::SetOrder(int order){m_order = order;}
void Player::setName(QString name){m_name = name;}
