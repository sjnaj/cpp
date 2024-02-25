#include <utility>
#include <iostream>
#include <type_traits>
#include <string>
template <typename T>
#if __cplusplus >= 201703L
using EnableIfString = std::enable_if_t<std::is_convertible_v<T, std::string>>;
// using EnableIfString = std::enable_if_t<std::is_constructible_v< std::string,T>>;
#elif __cplusplus >= 201403L
using EnableIfString = std::enable_if_t<std::is_convertible<T, std::string>::value>;
#elif __cplusplus >= 201103L
using EnableIfString = typename std::enable_if<std::is_convertible<T, std::string>::value>::type;
#endif
class Person
{
private:
    std::string name;

public:
    template <typename STR, typename = EnableIfString<STR>> // if enable typename=void else whole function is ignored
    explicit Person(STR &&n) : name(std::forward<STR>(n))
    {
        std::cout << "TMPL-CONSTANT for " << name << std::endl;
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

int main()
{
    std::string s = "sname";
    Person p1(s);
    Person p2("tmp");
    Person p3(p1);
    Person p4(std::move(p1));
}