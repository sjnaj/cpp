/*
 * @Author: fengsc
 * @Date: 2021-10-06 22:37:32
 * memmntalLastEditTime: 2021-10-07 00:22:48
 */
#include <iostream>
#include "src/func.h"
enum Example : unsigned char
{
  a = 10,
  b,
  c,
  d,
  e,
  f,
  g,
  h
};
class Entity
{
public:
  int a, b;
  Entity(int x, int y) : a(x), b(y) {}
  Entity(){std::cout<<"lalala"<<std::endl;}
  void func() { std::cout << "NULL FUNC" << std::endl; }
  void func(int x) { std::cout << x << std::endl; }

  static int x, y;
  static void Print()
  {
    std::cout << x << ' ' << y << std::endl;
  }
};
class Derive : public Entity
{
public:
  using Entity::func;
  void func(int x) { std::cout << x + 1 << std::endl; }
  void func() { std::cout << a << std::endl; }
  Derive(int x, int y)  {a=x;}
};
int Entity::x, Entity::y;
int main()
{
  Example p = a;
  std::cout << p << std::endl;
  Entity entity{1, 2};
  entity.x = 10;
  entity.y = 20;
  //std::cout << entity.a << ' ' << entity.b << std::endl;
  Derive derive{3, 4};
  derive.func(2);
  derive.func();
  Entity::Print();
  Entity::x = 15;
  Entity::y = 25;
  entity.Print();
}