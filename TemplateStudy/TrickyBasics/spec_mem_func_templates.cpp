#include <string>
class BoolString
{
private:
    std::string value;

public:
    BoolString(std::string const &s) : value(s)
    {
    }
    template <typename T = std::string>
    T get() const
    {
        return value;
    }
};
template <>
inline bool BoolString::get<bool>() const//inline防止重复包含
{
    return value == "true" || value == "1" || value == "on";
}
#include <iostream>
int main()
{
    std::cout << std::boolalpha;
    BoolString s1("hello");
    std::cout << s1.get() << std::endl;
    std::cout << s1.get<bool>() << std::endl;
    BoolString s2("on");
    std::cout << s2.get<bool>() << std::endl;
}