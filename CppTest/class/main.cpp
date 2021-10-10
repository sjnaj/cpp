/*
 * @Author: fengsc
 * @Date: 2021-10-06 22:37:32
 * memmntalLastEditTime: 2021-10-07 00:22:48
 */
#include <iostream>
#include <stdio.h>
#include <typeinfo>
//#include <cxxabi.h>
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
class Virtual
{
public:
  virtual ~Virtual() = default;
  virtual void func() = 0;
};
class Entity : public Virtual
{
protected:
  int a, b;
public:
  Entity(int x, int y) : a(x), b(y) {}
  Entity() { std::cout << "lalala" << std::endl; }
  void func() override { std::cout << a << ' ' << "This is Entity" << std::endl; }
  void func(int x) { std::cout << x << std::endl; }
  static const int x=1, y=2;
  static void Print()
  {
    std::cout << x << ' ' << y << std::endl;
  }
  virtual ~Entity() = default;
};
class Derive : public Entity
{
private:
  int x, y;
  //int a;
public:
mutable int x1;
  using Entity::func;
  void func(int x) { std::cout << x + 1 << std::endl; }
  void func() override { std::cout << a << ' ' << "This is Derive" << std::endl; }
  int getVal()const
  {
    return a;
    x1=2;
  }
  Derive(int x, int y)
  {
    this->x = x;
    this->y = y;
    a = 10;
  }
  Derive(int x) { a = x; }
  Derive() = default;
};
//int Entity::x, Entity::y;
int main()
{
  /*Example p = a;
  std::cout << p << std::endl;*/
  /* Entity entity{1, 2};
  entity.x = 10;
  entity.y = 20;
  Entity::Print();
  Entity::x = 15;
  Entity::y = 25;
  entity.Print();*/
  /*  std::cout << *(int *)&entity << std::endl;
    std::cout << *(int *)((char*)&entity+sizeof(int)) << std::endl;*/
  //std::cout << entity.a << ' ' << entity.b << std::endl;
  const Derive derive(3);
  std::cout<<derive.getVal()<<std::endl;
  Derive derive1(4);
  std::cout<<derive1.getVal()<<std::endl;

 /* Derive derive{3, 4};
  derive.func(2);
  derive.func();
  Virtual *p = new Entity(1, 2);
  p->func();
  p = new Derive(3, 4);
  Derive *q = new Derive(5, 6);
  p->func();
  const std::type_info &Info(typeid(p->func()));
  std::cout << Info.name() << '\t' << Info.hash_code() << std::endl;
  float a;
  const std::type_info &Info1(typeid(a));
  std::cout << Info1.name() << '\t' << Info1.hash_code() << std::endl;
  const std::type_info &Info2(typeid(derive));
  std::cout << Info2.name() << '\t' << Info2.hash_code() << std::endl;
  delete p;*/
}