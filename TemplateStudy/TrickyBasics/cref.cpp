#include <functional>
#include <string>
#include <iostream>

void printString(std::string const &s)
{

    std::cout << s << std::endl;
}

template <typename T>
void printT(T arg)
{
    printString(arg); // can convert reference_wrapper to reference
}
template <typename T>
void printV(T arg)
{
    
    std::cout <<(std::string) arg << std::endl;//reference_wrapper need convert to original type
}

int main()
{
    std::string s = "hello";
    printT(s);
    printT(std::cref(s)); // return reference_wrapper<const _Tp>(__t);
    printV(s);
    printV(std::cref(s));
}