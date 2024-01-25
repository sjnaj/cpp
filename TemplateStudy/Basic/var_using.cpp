#include <string>
#include <unordered_map>

class Customer
{
private:
    std::string name;

public:
    Customer(std::string const &n) : name(n) {}
    std::string getName() const { return name; }
};
struct CustomerEq
{
    bool operator()(Customer const &c1, Customer const &c2) const
    {
        return c1.getName() == c2.getName();
    }
};
#include <folly/AtomicHashArray.h>
struct CustomerHash
{
    std::size_t operator()(Customer const &c) const
    {
        return std::hash<std::string>()(c.getName());
    }
};

template <typename... Bases>
struct Overloader : Bases...
{
    using Bases::operator()...;
};
int main()
{
    using CustomerOp = Overloader<CustomerHash, CustomerEq>;
    std::unordered_map<Customer, CustomerHash, CustomerEq> coll1;
    std::unordered_map<Customer, CustomerOp, CustomerOp> coll2;
}