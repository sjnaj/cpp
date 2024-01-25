template <typename T1, typename T2>
class MyClass // necessary

{
};

template <typename T>
class MyClass<T, T>
{
};
template <typename T>
class MyClass<T, int>
{
};
template <typename T1, typename T2>
class MyClass<T1 *, T2 *>
{
};

int main()
{
    MyClass<int, float> mif;
    MyClass<float, float> mff;
    MyClass<float, int> mfi;
    MyClass<int *, float *> mp;
}