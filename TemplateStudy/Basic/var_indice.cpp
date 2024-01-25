#include <iostream>
#include <vector>
template <typename... Types>
void print(Types const &...args)
{
    (std::cout << ... << args) << '\n';
}
template <typename C, typename... Idx>
void printElems(C const &coll, Idx... idx)
{
    print(coll[idx]...);
}

template <std::size_t... Idx, typename C>
void printIdx(C const &coll)
{
    print(coll[Idx]...);
}
int main()
{
    std::vector<std::string> coll = {"good", "time", "say", "bye"};
    printElems(coll, 2, 0, 3);
    printIdx<2, 0, 3>(coll);
}