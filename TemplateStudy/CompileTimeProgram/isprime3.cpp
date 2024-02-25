constexpr bool isPrime(unsigned int p)
{
    for (unsigned int d = 2; d <= p / 2; d++)
    {
        if (p % d == 0)
        {
            return false;
        }
    }
    return p > 1;
}
bool foo()
{
    return isPrime(57);
}
#include <iostream>
int main()
{

    // compile time
    constexpr bool b1 = isPrime(9);
    const bool b2 = isPrime(9);
    // compile or run time
    std::cout << foo() << std::endl;
    // run time
    std::cout << isPrime(11) << std::endl;
}