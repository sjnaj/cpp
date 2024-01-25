#include <vector>
#include <string>
template <typename T>
class Stack
{
private:
    std::vector<T> elems;

public:
    Stack() = default;
    // passing by reference
    Stack(T const &elem) : elems({elem}) {}
};

template <typename T>
class Stack1
{
private:
    std::vector<T> elems;

public:
    Stack1() = default;
    // passing by val
    Stack1(T elem) : elems({std::move(elem)}) {}
};
template <typename T>
class Stack2
{
private:
    std::vector<T> elems;

public:
    Stack2() = default;
    // passing by val
    Stack2(T elem) : elems({std::move(elem)}) {}
    Stack2(Stack2 const &s) : elems(s.elems) {}
};
Stack2(char const *) -> Stack2<std::string>;
int main()
{
    Stack<int> intStack1;
    Stack<int> intStack2 = intStack1;

    // ok since c++17
    Stack intStack3 = intStack1;
    Stack intStack = 0;

    // Stack stringStack = "bottom";//<char [7]>,because passing by reference,does not decay,and no matching constructor for initialization of 'std::vector<char[7]>

    Stack1 stringStack = "bottom"; //<const char *>

    Stack2 s1{"bottom"}; //<std::string>


    // Stack2 s2 = "bottom"; //deduced std::string,but not valid. no viable conversion from 'const char[7]' to 'Stack2<std::string>'
    
    //     struct S { S(std::string) {} }; // implicitly convertible from std::string
    // S s("abc");   // OK: conversion from const char[4] to std::string
    // S s = "abc";  // Error: no conversion from const char[4] to S
    // S s = "abc"s; // OK: conversion from std::string to S
    //* the implicit conversion in copy-initialization must produce directly from the initializer

    Stack2 s3 = Stack2("bottom");
    using namespace std::string_literals;//c++14+
    Stack2 s4 = "bottom"s;
    Stack2 s5{s1};
    Stack2 s6(s1);
    Stack2 s7 = {s1};
}