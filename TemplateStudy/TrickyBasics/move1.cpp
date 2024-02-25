#include <utility>
#include <iostream>

class X
{
};

void g(X &) { std::cout << "g() for variable\n"; }
void g(X const &) { std::cout << "g() for constant\n"; }
void g(X &&) { std::cout << "g() for movable object\n"; }

void f(X &val) { g(val); }
void f(X const &val) { g(val); }
void f(X &&val) { g(val); }

int main()
{
    X v;
    X const c;
    f(v);
    f(c);
    f(X());
    f(std::move(v));
}