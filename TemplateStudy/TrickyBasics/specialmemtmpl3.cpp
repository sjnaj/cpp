#include <iostream>
#include <type_traits>
#include <string>
template <typename T>
concept ConvertibleToString = std::is_convertible_v<T, std::string>;
class Person
{
private:
    std::string name;

public:
    template <typename STR>
        requires std::is_convertible_v<STR, std::string>
        //requires ConvertibleToString
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