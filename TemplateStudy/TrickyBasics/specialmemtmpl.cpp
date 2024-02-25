#include <utility>
#include <string>
#include <iostream>

class Person
{
private:
    std::string name;

public:
    template <typename STR>
    explicit Person(STR &&n) : name(std::forward<STR>(n))
    {
        std::cout << "TMPL-CONSTR for " << name << std::endl;
    }
    Person(Person const &p) : name(p.name)
    {
        std::cout << "COPY-CONSTR Person" << name << std::endl;
    }
    Person(Person &&p) : name(std::move(p.name))
    {
        std::cout << "MOVE-CONSTR Person" << name << std::endl;
    }
};

int main(){
    std::string s="sname";
    Person p1(s);
    Person p2("tmp");
    // Person p3(p1);//match construct (substitution failure)
    Person p4(std::move(p1));
    Person const p2c("ctmp");
    Person p3c(p2c);
}