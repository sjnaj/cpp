#include <algorithm>
#include <vector>
#include <iostream>

template <typename It,typename Comp=std::less<typename It::value_type>>
void quickSort(const It &lowerIt, const It &upperIt,Comp comp=std::less<typename It::value_type>())
{
    if (upperIt - lowerIt < 2)
        return;

    auto pValue = *lowerIt;
    // using vtype=typename It::value_type;
    auto pIt = _partition(lowerIt, upperIt,[pValue,comp](auto i){return comp(i,pValue);});

    quickSort(lowerIt, pIt - 1);
    quickSort(pIt + 1, upperIt);
}
template <typename It, typename Pred>
It _partition(It start, It end, Pred pred)
{
    while (true)
    {
        while (true)
        {
            if (start == end)
                return start;
            else if (pred(*start))
                start++;
            else
                break;
        }
        --end;
        while (true)
        {
            if (start == end)
                return start;
            else if (!pred(*end))
                end--;
            else
                break;
        }
        std::swap(*start, *end);
        ++start;
    }
}

int main()
{
    std::vector<int> vec{1, 100, 2, 4, 3, 2, 4, 5, 5, 4};
    quickSort(vec.begin(), vec.end());
    for (int i : vec)
    {
        std::cout << i << ' ';
    }
}
