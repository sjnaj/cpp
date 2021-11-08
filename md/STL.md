<!--
 * @Author: fengsc
 * @Date: 2021-08-02 18:59:05
 * @LastEditTime: 2021-11-08 12:59:35
-->
- [STL](#stl)
  - [基本](#基本)
  - [序列式容器](#序列式容器)
    - [array(静态数组)](#array静态数组)
    - [vector(动态数组)](#vector动态数组)
    - [deque](#deque)
    - [list](#list)
  - [容器适配器](#容器适配器)
    - [stack](#stack)
    - [queue](#queue)
    - [priority_queue](#priority_queue)
    - [pair and make_pair](#pair-and-make_pair)
    - [tuple](#tuple)
  
# STL

## 基本

STL，英文全称 **standard template library**，中文可译为**标准模板库或者泛型库**，其包含有大量的模板类和模板函数，是 C++ 提供的一个基础模板的集合，用于完成诸如输入/输出、数学计算等功能。

STL 最初由惠普实验室开发，于 1998 年被定为国际标准，正式成为 C++ 程序库的重要组成部分。值得一提的是，如今 STL 已完全被内置到支持 C++ 的编译器中，无需额外安装，这可能也是 STL 被广泛使用的原因之一。
STL 就位于各个 C++ 的头文件中，即它并非以二进制代码的形式提供，而是**以源代码的形式提供**。

从根本上说，STL 是一些容器、算法和其他一些组件的集合，所有容器和算法都是总结了几十年来算法和数据结构的研究成果，汇集了许多计算机专家学者经验的基础上实现的，因此可以说，STL 基本上达到了各种存储方法和相关算法的高度优化。

| STL的组成  | 含义                                                                                                                                                                                         |
| ---------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 容器       | 一些封装数据结构的模板类，例如 vector 向量容器、list 列表容器等。                                                                                                                            |
| 算法       | STL* 提供了非常多（大约 100 个）的数据结构算法，它们都被设计成一个个的模板函数，这些算法在 std 命名空 间中定义，其中大部分算法都包含在头文件 \<algorithm\> 中，少部分位于头文件 \<numeric\> 中。 |
| 迭代器     | 在 C++ STL 中，对容器中数据的读和写，是通过迭代器完成的，扮演着容器和算法之间的胶合剂。                                                                                                      |
| 函数对象   | 如果一个类将 () 运算符重载为成员函数，这个类就称为函数对象类，这个类的对象就是函数对象（又称仿函数）。                                                                                       |
| 适配器     | 可以使一个类的接口（模板的参数）适配成用户指定的形式，从而让原本不能在一起工作的两个类工作在一起。值得一提的是，容器、迭代器和函数都有适配器。                                               |
| 内存分配器 | 为容器类模板提供自定义的内存申请和释放功能，由于往往只有高级用户才有改变内存分配策略的需求，因此内存分配器对于一般用户来说，并不常用。                                                       |

 | 容器种类 | 功能                                                                                                                                                                                                                             |
 | -------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
 | 序列容器 | 主要包括 vector 向量容器、list 列表容器以及 deque 双端队列容器。之所以被称为序列容器，是因为元素在容器中的位置同元素的值无关，即容器不是排序的。将元素插入容器时，指定在什么位置，元素就会位于什么位置。                         |
 | 排序容器 | 包括 set 集合容器、multiset多重集合容器、map映射容器以及 multimap 多重映射容器。排序容器中的元素默认是由小到大排序好的，即便是插入元素，元素也会插入到适当位置。所以关联容器在查找时具有非常好的性能。                           |
 | 哈希容器 | C++ 11 新加入 4 种关联式容器，分别是 unordered_set 哈希集合、unordered_multiset 哈希多重集合、unordered_map 哈希映射以及 unordered_multimap 哈希多重映射。和排序容器不同，哈希容器中的元素是未排序的，元素的位置由哈希函数确定。 |
 

利用泛型技术，将对数据结构的排序，查找，求和等需要遍历数据的操作方法设计成适用于所有容器的通用算法，现此目的需要有一个类似中介的装置，它**除了要具有对容器进行遍历读写数据的能力之外，还要能对外隐藏容器的内部差异，从而以统一的界面向算法传送数据**。于是迭代器就产生了。

迭代器和 C++ 的指针非常类似，它可以是需要的任意类型，通过迭代器可以指向容器中的某个元素，如果需要，还可以对该元素进行读/写操作。

常用的迭代器按功能强弱分为输入迭代器、输出迭代器、前向迭代器、双向迭代器、随机访问迭代器 5 种。

输入迭代器和输出迭代器比较特殊，它们不是把数组或容器当做操作对象，而是把输入流/输出流作为操作对象。

1)前向迭代器（forward iterator）
假设 p 是一个前向迭代器，则 p 支持 **++p，p++，*p**操作，还可以**被复制或赋值**，可以用 == 和 != 运算符**进行比较**。此外，两个正向迭代器可以互相赋值。

2)双向迭代器（bidirectional iterator）
双向迭代器具有正向迭代器的全部功能，除此之外，假设 p 是一个双向迭代器，则还**可以进行 --p 或者 p-- 操作**（即一次向后移动一个位置）。

3)随机访问迭代器（random access iterator）
随机访问迭代器具有双向迭代器的全部功能。除此之外，假设 p 是一个随机访问迭代器，i 是一个整型变量或常量，则 p 还支持以下操作：
p+=i：使得 p 往后移动 i 个元素。
p-=i：使得 p 往前移动 i 个元素。
p+i：返回 p 后面第 i 个元素的迭代器。
p-i：返回 p 前面第 i 个元素的迭代器。
p[i]：返回 p 后面第 i 个元素的引用。

此外，两个**随机访问迭代器 p1、p2 还可以用<、>、<=、>= 运算符进行比较**。另外，表达式 **p2-p1** 也是有定义的，其返回值表示 p2 所指向元素和 p1 所指向元素的**序号之差**（也可以说是 p2 和 p1 之间的元素个数减一）。

| 容器                               | 对应的迭代器类型 |
| ---------------------------------- | ---------------- |
| array                              | 随机访问迭代器   |
| vector                             | 随机访问迭代器   |
| deque                              | 随机访问迭代器   |
| list	双向迭代器                    |
| set / multiset                     | 双向迭代器       |
| map / multimap                     | 双向迭代器       |
| forward_list                       | 前向迭代器       |
| unordered_map / unordered_multimap | 前向迭代器       |
| unordered_set / unordered_multiset | 前向迭代器       |
| stack                              | 不支持迭代器     |
| queue                              | 不支持迭代器     |

容器适配器 stack 和 queue 没有迭代器，它们包含有一些成员函数，可以用来对元素进行访问

| 迭代器定义方式 | 具体格式                                    |
| -------------- | ------------------------------------------- |
| 正向迭代器     | 容器类名::iterator  迭代器名;               |
| 常量正向迭代器 | 容器类名::const_iterator  迭代器名;         |
| 反向迭代器     | 容器类名::reverse_iterator  迭代器名;       |
| 常量反向迭代器 | 容器类名::const_reverse_iterator  迭代器名; |

**\*迭代器名**就表示迭代器指向的元素

**迭代器与指针的区别**.

（1） 迭代器不是指针，是类模板，表现的 像 指针。他只是 模拟了指针的一些功能，通过 重载了指针的一些操作符，->,*,++ --等封装了指针，是一个“可遍历STL（ Standard Template Library）容器内全部或部分元素”的对象， 本质是封装了原生指针，是指针概念的一种提升（lift），提供了比指针更高级的行为，**相当于一种智能指针，他可以根据不同类型的数据结构来实现不同的++，--等操作**；

（2）迭代器返回的是 **对象引用而不是对象自身**，所以cout只能输出迭代器使用 *取值后的值而不能直接输出其自身。

（3）在设计模式中有一种模式叫 迭代器模式，简单来说就是提供一种方法，在不需要暴露某个容器的内部表现形式情况下，使之能依次访问该容器中的各个元素，这种设计思维在STL中得到了广泛的应用，是STL的关键所在，通过 迭代器，容器和算法可以有机的粘合在一起，只要对算法给予不同的迭代器，就可以对不同容器进行相同的操作。

常量迭代器和非常量迭代器的区别在于，通过**非常量迭代器还能修改其指向的元素**

反向迭代器和正向迭代器的区别在于：
对正向迭代器进行 ++ 操作时，迭代器会指向容器中的后一个元素；
而对反向迭代器进行 ++ 操作时，迭代器会指向容器中的前一个元素。

有一部分容器同时支持以上 4 种方式，比如 array、deque、vector；而有些容器只支持其中部分的定义方式，例如 forward_list 容器只支持定义正向迭代器，不支持定义反向迭代器。

插删元素对迭代器的影响

![a](https://i.loli.net/2021/10/15/V1ntIq3EPWGcekC.png)

使用失效的迭代器，指针或引用是严重的运行时错误，所以每次改变容器之后都应该更新迭代器。

## 序列式容器

### array(静态数组)

```cpp
#include <array>
std::array<double, 10> values {0.5,1.0,1.5,,2.0};

//C++17以后可以自动推导类型和数量，但不能部分指定。
//不会像普通数组那样退化为指针，例如传参时丢失size
//由于要显式指定大小，传参较为不方便，一般配合模板使用
```

可部分初始化

{}:初始化为0；

| 成员函数            | 功能                                                                                                   |
| ------------------- | ------------------------------------------------------------------------------------------------------ |
| begin()             | 返回指向容器中第一个元素的随机访问迭代器。                                                             |
| end()               | 返回指向容器最后一个元素之后一个位置的随机访问迭代器，通常和 begin() 结合使用。                        |
| rbegin()            | 返回指向最后一个元素的随机访问迭代器。                                                                 |
| rend()              | 返回指向第一个元素之前一个位置的随机访问迭代器。                                                       |
| cbegin()            | 和 begin() 功能相同，只不过在其基础上增加了 const 属性，不能用于修改元素。                             |
| cend()              | 和 end() 功能相同，只不过在其基础上，增加了 const 属性，不能用于修改元素。                             |
| crbegin()           | 和 rbegin() 功能相同，只不过在其基础上，增加了 const 属性，不能用于修改元素。                          |
| crend()             | 和 rend() 功能相同，只不过在其基础上，增加了 const 属性，不能用于修改元素。                            |
| size()              | 返回容器中当前元素的数量，其值始终等于初始化 array 类的第二个模板参数 N。                              |
| max_size()          | 返回容器可容纳元素的最大数量，其值始终等于初始化 array 类的第二个模板参数 N。                          |
| empty()             | 判断容器是否为空，和通过 size()==0 的判断条件功能相同，但其效率可能更快。                              |
| at(n)               | 返回容器中 n 位置处元素的引用，该函数自动检查 n 是否在有效的范围内，如果不是则抛出 out_of_range 异常。 |
| front()             | 返回容器中第一个元素的直接引用，该函数不适用于空的 array 容器。                                        |
| back()              | 返回容器中最后一个元素的直接应用，该函数同样不适用于空的 array 容器。                                  |
| data()              | 返回一个指向容器首个元素的指针。利用该指针，可实现复制容器中所有元素等类似功能。                       |
| fill(val)           | 将 val 这个值赋值给容器中的每个元素。                                                                  |
| array1.swap(array2) | 交换 array1 和 array2 容器中的所有元素，但前提是它们具有相同的长度和类型。                             |

除此之外，C++ 11 标准库还新增加了 begin() 和 end() 这 2 个**全局函数（std::begin(),std::end()）**，和 array 容器包含的 begin() 和 end() 成员函数不同的是，标准库提供的这 2 个函数的操作对象，既可以是容器，还可以是普通数组,**是含参函数不是成员函数**。当操作对象是容器时，它和容器包含的 begin() 和 end() 成员函数的功能完全相同；**如果操作对象是普通数组，则 begin() 函数返回的是指向数组第一个元素的指针，同样 end() 返回指向数组中最后一个元素之后一个位置的指针（注意不是最后一个元素）**。

获取i处的元素：get\<i\>value

当两个 array 容器满足大小相同并且保存元素的类型相同时，两个 array 容器可以直接直接做**赋值操作**，即将一个容器中的元素赋值给另一个容器。还可以比较大小，两个容器比较大小的原理，**和两个字符串比较大小是一样的**，即从头开始，逐个取两容器中的元素进行大小比较（根据 ASCII 码表），直到遇到两个不相同的元素，那个元素的值大，则该容器就大。

```cpp
#include <iostream>
//需要引入 array 头文件
#include <array>
using namespace std;
int main()
{
    std::array<int, 5> values{};
    //初始化 values 容器为 {0,1,2,3，4}
    /*method 1*/
    for (int i = 0; i < values.size(); i++) {
        values.at(i) = i;
    }
    /*method 2*/
    h=0;
     auto first = values.begin();//auto first=begin(values)
    auto last = values.end();
    //初始化 values 容器为{1,2,3,4,5}
    while (first <last)//不支持随机访问的只能用!=
    {
        *first = h;
        ++first;
        h++;
    }
    /*method 3*/
    h=5;
    auto first = values.rbegin();
    auto last = values.rend(); 
    while (first != last)
    {
        *first = h;
        ++first;
        h--;
    }
/*method 4*/
     h=1;
    for(auto &value:values)//基于范围的for，不加时&相当于值传递，不能通过形参value进行修改
      value=i++;
//前身是：
for (std::vector<int>::iterator itr = vec.begin(); itr != vec.end(); itr++)
		std::cout << *itr;
    //访问指定位置的元素
      cout << "values1[0] is : " << values1[0] << endl;
    cout << "values1[1] is : " << values1.at(1) << endl;//用at访问可以防止越界
    cout << "values1[2] is : " << get<2>(values1) << endl;//实参必须是一个在编译时可以确定的常量表达式，所以它不能是一个循环变量.
    cout << *( value.data()+i);//等价于&value[i];
    
        if(values.empty())
    std::cout << "The container has no elements.\n";
else
    std::cout << "The container has "<< values.size()<<"elements.\n";
}
```

### vector(动态数组)

vector 容器是 STL 中最常用的容器之一，它和 array 容器非常类似，都可以看做是对 C++ 普通数组的“升级版”。不同之处在于，**array 实现的是静态数组（容量固定的数组），而 vector 实现的是一个动态数组，**即可以进行元素的插入和删除，在此过程中，vector 会动态调整所占用的内存空间，整个过程无需人工干预。

vector 常被称为向量容器，因为该容器擅长在尾部插入或删除元素，在常量时间内就可以完成，时间复杂度为O(1)；而对于在容器头部或者中部插入或删除元素，则花费时间要长一些（移动元素需要耗费时间），时间复杂度为线性阶O(n)。

```cpp
#include <vector>
//创建：
std::vector<double> values;//空容器
values.reserve(20);//设置可用容量，改变capacity,如果 vector 的容量在执行此语句之前，已经大于或等于 20 个元素，那么这条语句什么也不做，预分配，没有初始化，直接访问会越界
/*如果调用 reserve() 来增加容器容量，之前创建好的任何迭代器（例如开始迭代器和结束迭代器）都可能会失效，这是因为，为了增加容器的容量，vector<T> 容器的元素可能已经被复制或移到了新的内存地址。所以后续再使用这些迭代器时，最好重新生成一下。不影响迭代器差值，但影响存储位置*/
values.resize(20);//设置实际容量,改变size，影响首尾迭代器差值，多删少补；也可以用两个参数指定填充值
//对于空的 vector 容器来说，可以通过调用 push_back() 或者借助 resize() 成员函数实现初始化容器的目的。
std::vector<double> values(20);//直接初始化实际容量,默认初始值都为 0
std::vector<double> values(20, 1.0);//指定初始化值， 2 个参数，既可以是常量，也可以用变量来表示
//不能用 const 常量初始化
std::vector<int> primes {2, 3, 5, 7, 11, 13, 17, 19};
/*通过存储元素类型相同的其它 vector 容器，也可以创建新的 vector 容器*/
std::vector<char>value1(5, 'c');
std::vector<char>value2(value1);
/*通过一对指针或迭代器来指定初始值的范围*/
int array[]={1,2,3};
std::vector<int>values(array, array+2);//values 将保存{1,2}，普通数组用指针
std::vector<int>array{1,2,3};//
std::vector<int>values(array.begin(), array.begin()+2);//容器用迭代器
//截取的范围是初始位置到末位置前一个，即初位置到初位置加截取长度
//也可以写成
std::vector<int>values；
values.assign(array.begin(), array.begin()+2);
/*assign两种用法
void assign ( InputIterator first, InputIterator last );
void assign ( size_type n, const T& u );*/
 vector<vector<int>> h(m,vector<int>(n)) = {0};//二维

//C++11以后在vector类成员可以在定义时初始化，之前只能在构造函数中初始化

class Foo(){
private:
    vector<string> name = vector<string>(5);
    vector<int> val{vector<int>(5,0)};
};
//C++11之前
class Foo {
private:
    vector<string> name;
    vector<int> val;
 public:
  Foo() : name(5), val(5,0) {}
};
//将一个vector分成两半
   auto First = lists.begin();
       auto Second = lists.begin() + lists.size() / 2;
        auto Last = lists.end();
         vector<ListNode *> list1(First, Second);
         vector<ListNode *> list2(Second, Last);


vector<int> nums1(nums.begin(), nums.begin()+nums.size()/2);

/*访问元素方式同array*/
//[],at,data,*iter，std::get<>()等等

/*尾部添加元素*/
values.push_back(1);
values.emplace_back(2);//string没有这个,只有push_back()
/*emplace_back() 和 push_back() 的区别，就在于底层实现的机制不同。push_back() 向容器尾部添加元素时，首先会创建这个元素，然后再将这个元素拷贝或者移动到容器中（如果是拷贝的话，事后会自行销毁先前创建的这个元素）；而 emplace_back() 在实现时，则是直接在容器尾部创建这个元素，省去了拷贝或移动元素的过程。*/
/*emplace_back() 的执行效率比 push_back() 高。因此，在实际使用时，优先选用 emplace_back()(C++11)。*/


```

**插入**.

| 语法格式	| 用法说明 |
|----|----|
| iterator insert(pos,elem)	| 在迭代器 pos 指定的位置之前插入一个新元素elem，并返回表示新插入元素位置的迭代器。 |
| iterator insert(pos,n,elem)	| 在迭代器 pos 指定的位置之前插入 n 个元素 elem，并返回表示第一个新插入元素位置的迭代器。 |
| iterator insert(pos,first,last) 	| 在迭代器 pos 指定的位置之前，插入其他容器（不仅限于vector）中位于 [first,last) 区域的所有元素，并返回表示第一个新插入元素位置的迭代器。 |
| iterator insert(pos,initlist)	| 在迭代器 pos 指定的位置之前，插入初始化列表（用大括号{}括起来的多个元素，中间有逗号隔开）中所有的元素，并返回表示第一个新插入元素位置的迭代器。 |

```cpp
 std::vector<int> demo{1,2};
    //第一种格式用法
    demo.insert(demo.begin() + 1, 3);//{1,3,2}
    //第二种格式用法
    demo.insert(demo.end(), 2, 5);//{1,3,2,5,5}
    //第三种格式用法
    std::array<int,3>test{ 7,8,9 };
    demo.insert(demo.end(), test.begin(), test.end());//{1,3,2,5,5,7,8,9}
    //第四种格式用法
    demo.insert(demo.end(), { 10,11 });//{1,3,2,5,5,7,8,9,10,11}

    demo1.emplace(demo1.begin(), 3);//一次只能插入一个，运行效率更高

```

**删除元素**.


| 函数	| 功能 |
|---|---|
| pop_back()	| 删除 vector 容器中最后一个元素，该容器的大小（size）会减 1，但容量（capacity）不会发生改变。| 
| erase(pos)	| 删除 vector 容器中 pos 迭代器指定位置处的元素，并返回指向被删除元素下一个位置元素的迭代器。该容器的大小（size）会减 1，但容量（capacity）不会发生改变。| 
| swap(pos1,pos2)、pop_back()	| 先调用 swap() 函数交换要删除的目标元素和容器最后一个元素的位置，然后使用 pop_back() 删除该目标元素。| 
| erase(beg,end)	| 删除 vector 容器中位于迭代器 **[beg,end)**（前闭后开）指定区域内的所有元素，并返回指向被删除区域下一个位置元素的迭代器。该容器的大小（size）会减小，但容量（capacity）不会发生改变。| 
| remove()	| 删除容器中所有和指定元素值相等的元素，并返回指向最后一个元素下一个位置的迭代器。值得一提的是，调用**该函数不会改变容器的大小和容量。**| 
| clear()	| 删除 vector 容器中所有的元素，使其变成空的 vector 容器。该函数会改变 vector 的大小（变为 0），但不是改变其容量。| 

swap和remove是标准库函数，其它是成员函数

**都不会影响capacity;可能会影响size**.

```cpp
 demo.pop_back();//它不需要传入任何的参数，也没有返回值
 auto iter = demo.erase(demo.begin() + 1);//删除位置后续的元素陆续前移

 swap(*(std::begin(demo)+1),*(std::end(demo)-1));//等同于 swap(demo[1],demo[4])
 demo.pop_back();//同前面erase语句功能

 auto iter = demo.erase(demo.begin()+1, demo.end() - 2)//返回值就是区间右端点

 auto iter = std::remove(demo.begin(), demo.end(), 3);//返回值处相当于处理后的vector的end
 /*Elements between the end of the resulting sequence and @p __last(A forward iterator.)
  are still present, but their value is unspecified（未指定的，是原来的值）.*/
 //所以不能用size或end()遍历，应该用返回的迭代器作为遍历终点
 //也可以将后面的部分删去后按一般方法遍历
 demo.erase(iter, demo.end());

 demo.clear();//清空vector，size归零,并不会把所有元素清零并不会把所有元素清零.

 demo.shrink_to_fit();使capacity和size一样

 demo.reverse(demo.begin(), demo.end());//逆置

 return vector<string>(0);//返回空的vector,0可以省略
//或
 return {};//注意冒号，列表初始化返回值

  ```
  
清零：

  Method      |  executable size  |  Time Taken (in sec) |
            |  -O0    |  -O3    |  -O0      |  -O3     |  
------------|---------|---------|-----------|----------|
1. memset   | 17 kB   | 8.6 kB  | 0.125     | 0.124     |
2. fill     | 19 kB   | 8.6 kB  | 13.4      | 0.124    |
3. manual   | 19 kB   | 8.6 kB  | 14.5      | 0.124    |
4. assign   | 24 kB   | 9.0 kB  | 1.9       | 0.591    |

```cpp
  for(size_t i = 0; i < TEST_ITERATIONS; ++i) {
   #if TEST_METHOD == 1 
      memset(&v[0], 0, v.size() * sizeof v[0]);
   #elif TEST_METHOD == 2
      std::fill(v.begin(), v.end(), 0);
   #elif TEST_METHOD == 3
      for (std::vector<int>::iterator it=v.begin(), end=v.end(); it!=end; ++it) {
         *it = 0;
      }
   #elif TEST_METHOD == 4
      v.assign(v.size(),0);
   #endif
   }
```

vector 容器扩容的整个过程，和 realloc() 函数的实现方法类似，大致分为以下 4 个步骤：
1，分配一块大小是当前 vector 容量几倍的新存储空间。注意，多数 STL 版本中的 vector 容器，其容器都会以 2 的倍数增长，也就是说，每次 vector 容器扩容，它们的容量都会提高到之前的 2 倍；
2，将 vector 容器存储的所有元素，依照原有次序从旧的存储空间复制到新的存储空间中；
3，析构掉旧存储空间中存储的所有元素；
4，释放旧的存储空间。

只要有新元素要添加到 vector 容器中而恰好此时 vector 容器的容量不足时，该容器就会自动扩容。
避免 vector 容器执行不必要的扩容操作的关键在于，在使用 vector 容器初期，就要将其容量设为足够大的值。换句话说，在 vector 容器刚刚构造出来的那一刻，就应该**借助 reserve() 成员方法为其扩充足够大的容量**。

**注意reverse和定义时的初始化不一样，后者会构造对象，前者只是预留空间**。

**利用swap调整容量**：vector\<T\>(x).swap(x);

1) 先执行 vector|<int\>(myvector)，此表达式会调用 vector 模板类中的拷贝构造函数，从而创建出一个临时的 vector 容器（后续称其为 tempvector）。

值得一提的是，tempvector 临时容器并不为空，因为我们将 myvector 作为参数传递给了复制构造函数，该函数会将 myvector 容器中的所有元素拷贝一份，并存储到 tempvector 临时容器中。
注意，vector 模板类中的拷贝构造函数只会为拷贝的元素分配存储空间。换句话说，**tempvector 临时容器中没有空闲的存储空间，其容量等于存储元素的个数**。

2) 然后借助 swap() 成员方法对 tempvector 临时容器和 myvector 容器进行调换，此过程不仅会交换 2 个容器存储的元素，还会交换它们的容量。换句话说经过 swap() 操作，myvetor 容器具有了 tempvector 临时容器存储的所有元素和容量，同时 tempvector 也具有了原 myvector 容器存储的所有元素和容量。

3) 当整条语句执行结束时，临时的 tempvector 容器会被销毁，其占据的存储空间都会被释放。注意，这里释放的其实是原 myvector 容器占用的存储空间。

```cpp
vector<int>(myvector).swap(myvector);//调用复制构造函数
//相当于myvector.shrink_to_fit();
vector<int>().swap(myvector);//调用默认构造函数得到空vector
//相当于myvector.clear();
```

### deque

\#include \<deque\>

deque 是 double-ended queue 的缩写，又称双端队列容器。

和 vector 相比，额外增加了实现在容器头部添加和删除元素的成员函数，同时删除了 capacity()、reserve() 和 data() 成员函数,无须考虑容量。
| | |
|--|--|
| push_back() |	在序列的尾部添加一个元素。|
| push_front() |	在序列的头部添加一个元素。|
|emplace_front() |	在容器头部生成一个元素。和 push_front() 的区别是，该函数直接在容器头部构造元素，省去了复制移动元素的过程。 |
|emplace_back()	| 在容器尾部生成一个元素。和 push_back() 的区别是，该函数直接在容器尾部构造元素，省去了复制移动元素的过程 |

begin(),和end()全局函数依然适用。初始化，访问元素也和vector一样。

### list

STL list 容器，又称双向链表容器，即该容器的底层是以双向链表的形式实现的。这意味着，list 容器中的元素可以分散存储在内存空间里，而不是必须存储在一整块连续的内存空间中。

list 容器具有一些其它容器（array、vector 和 deque）所不具备的优势，即它可以在序列已知的任何位置快速插入或删除元素（时间复杂度为O(1)）。并且在 list 容器中移动元素，也比其它容器的效率高。

使用 list 容器的缺点是，它不能像 array 和 vector 那样，通过位置直接访问元素。举个例子，如果要访问 list 容器中的第 6 个元素，它不支持容器对象名\[6]这种语法格式，正确的做法是从容器中第一个元素或最后一个元素开始遍历容器，直到找到该位置。

\#include \<list\>

特有成员方法

| | |
|--|--|
| clear() |	删除容器存储的所有元素。|
| splice() | 将一个 list 容器中的元素插入到另一个容器的指定位置。 |
| remove(val) |	删除容器中所有等于 val 的元素。 |
| remove_if()	| 删除容器中满足条件的元素。 |
| unique()	| 删除容器中相邻的重复元素，只保留一个。 |
| merge()	| 合并两个事先已排好序的 list 容器，并且合并之后的 list 容器依然是有序的。 |
| sort()	| 通过更改容器中元素的位置，将它们进行排序。|
| reverse()	| 反转容器中元素的顺序。 |

vector和quene的成员方法大都满足

splic 用法

| | | |
|--|--|--|
| 语法格式 |  解释  |	功能 |
| void splice (iterator position, list& x); |	position 为迭代器，用于指明插入位置；x 为另一个 list 容器。 |
 此格式的 splice() 方法的功能是，将 x 容器中存储的所有元素全部移动当前 list 容器中 position 指明的位置处。|
| void splice (iterator position, list& x, iterator i);	 | position 为迭代器，用于指明插入位置；x 为另一个 list 容器；i 也是一个迭代器，用于指向 x 容器中某个元素。 |
此格式的 splice() 方法的功能是将 x 容器中 i 指向的元素移动到当前容器中 position 指明的位置处。 |
| void splice (iterator position, list& x, iterator first, iterator last);	|position 为迭代器，用于指明插入位置；x 为另一个 list 容器；first 和 last 都是迭代器，[fist,last) 用于指定 x 容器中的某个区域。|
此格式的 splice() 方法的功能是将 x 容器 [first, last) 范围内所有的元素移动到当前容器 position 指明的位置处。 |

\#include \<forward_list\>:单向链表；

## 容器适配器

| 容器适配器 |	基础容器筛选条件 |	默认使用的基础容器 |
|--|--|--|
| stack 	基础容器需包含以下成员函数：|empty()size()back()push_back()pop_back() |满足条件的基础容器有 vector、deque、list。	deque |
 queue	基础容器需包含以下成员函数： empty()size()front()back()push_back()pop_front() | 满足条件的基础容器有 deque、list。	deque |
| priority_queue	基础容器需包含以下成员函数： |empty() size()front()push_back()pop_back() | 满足条件的基础容器有vector、deque。	vector |

**都没有迭代器，只能遍历访问，也不能直接初始化赋值**.

### stack

```cpp
std::stack<int> values;
stack<T,Container=deque<T>>/* 模板类提供了 2 个参数，通过指定第二个模板类型参数，我们可以使用出 deque 容器外的其它序列式容器，只要该容器支持 empty()、size()、back()、push_back()、pop_back() 这 5 个成员函数即可。*/
#include<stack>
std::list<int> values{ 1, 2, 3 };
std::stack<int, std::list<int>> my_stack1(values);
std::stack<int, std::list<int>> my_stack=my_stack1;
//std::stack<int, std::list<int>> my_stack(my_stack1);
//类似vector，建议用emplace代替push

```

| 成员函数 |	功能 |
|--|--|
| empty() |	当 stack 栈中没有元素时，该成员函数返回 true；反之，返回 false。 |
| size() |	返回 stack 栈中存储元素的个数。 |
| top() |	返回一个栈顶元素的引用，类型为 T&。如果栈为空，程序会报错。 |
| push(const T& val) |	先复制 val，再将 val 副本压入栈顶。这是通过调用底层容器的 push_back() 函数完成的。 |
| push(T&& obj) |	以移动元素的方式将其压入栈顶。这是通过调用底层容器的有右值引用参数的 push_back() 函数完成的。 |
| pop() |	弹出栈顶元素。 |
| | emplace(arg...)	 | arg... 可以是一个参数，也可以是多个参数，但它们都只用于构造一个对象，并在栈顶直接生成该对象，作为新的栈顶元素。 |
swap(stack<T> & other_stack) |	将两个 stack 适配器中的元素进行互换，需要注意的是，进行互换的 2 个 stack 适配器中存储的元素类型以及底层采用的基础容器类型，都必须相同。 |

### queue

作为 queue 容器适配器的基础容器，其必须提供 front()、back()、push_back()、pop_front()、empty() 和 size() 这几个成员函数，符合条件的序列式容器仅有 **deque 和 list**。

从back进，front出。

```cpp
#include<queue>
std::deque<int> values{1,2,3};
std::queue<int> my_queue1(values);
std::queue<int> my_queue(my_queue1);
//或者使用
//std::queue<int> my_queue = my_queue1;
```

| 成员函数 |	功能 |
|--|--|
| empty() |	如果 queue 中没有元素的话，返回 true。 |
| size() |	返回 queue 中元素的个数。 |
| front() |	返回 queue 中第一个元素的引用。如果 queue 是常量，就返回一个常引用；如果 queue 为空，返回值是未定义的。 |
| back() |	返回 queue 中最后一个元素的引用。如果 queue 是常量，就返回一个常引用；如果 queue 为空，返回值是未定义的。 |
| push(const T& obj) |	在 queue 的尾部添加一个元素的副本。这是通过调用底层容器的成员函数 push_back() 来完成的。 |
| emplace() |	在 queue 的尾部直接添加一个元素。 |
| push(T&& obj |)	以移动的方式在 queue 的尾部添加元素。这是通过调用底层容器的具有右值引用参数的成员函数 | push_back() 来完成的。 |
| pop() |	删除 queue 中的第一个元素。 |
| swap(queue<T> &other_queue) |	将两个 queue 容器适配器中的元素进行互换，需要注意的是，进行互换的 2 个 queue 容器适配器中存储的元素类型以及底层采用的基础容器类型，都必须相同。 |

### priority_queue

使用此容器适配器存储元素只能“从一端进（称为队尾），从另一端出（称为队头）”，且每次只能访问 priority_queue 中位于队头的元素。

但是，priority_queue 容器适配器中元素的存和取，遵循的并不是 “First in,First out”（先入先出）原则，而是“First in，Largest out”原则。直白的翻译，指的就是先进队列的元素并不一定先出队列，而是优先级最大的元素最先出队列。

假设当前有一个 priority_queue 容器适配器，其制定的排序规则是按照元素值从大到小进行排序。根据此规则，自然是 priority_queue 中值最大的元素的优先级最高。

priority_queue 容器适配器为了保证每次从队头移除的都是当前优先级最高的元素，每当有新元素进入，它都会根据既定的排序规则找到优先级最高的元素，并将其移动到队列的队头；同样，当 priority_queue 从队头移除出一个元素之后，它也会再找到当前优先级最高的元素，并将其移动到队头。

作为 priority_queue 容器适配器的底层容器，其必须包含 empty()、size()、front()、push_back()、pop_back() 这几个成员函数，STL 序列式容器中只有 vector 和 deque 容器符合条件。

```cpp
template <typename T,
        typename Container=std::vector<T>,
        typename Compare=std::less<T> >
class priority_queue{
    //......
/*typename Compare：指定容器中评定元素优先级所遵循的排序规则，默认使用std::less<T>按照元素值从大到小进行排序，还可以使用std::greater<T>按照元素值从小到大排序，但更多情况下是使用自定义的排序规则。*/
//，std::less<T> 和 std::greater<T> 都是以函数对象的方式定义在 <function> 头文件中
}
//使用普通数组
int values[]{4,1,3,2};
std::priority_queue<int>copy_values(values,values+4);//{4,2,3,1}
//使用序列式容器
std::array<int,4>values{ 4,1,3,2 };
std::priority_queue<int>copy_values(values.begin(),values.end());//{4,2,3,1}

/*以上 2 种方式必须保证数组或容器中存储的元素类型和 priority_queue 指定的存储类型相同。另外，用来初始化的数组或容器中的数据不需要有序，priority_queue 会自动对它们进行排序。*/

```

| 成员函数 |	功能 |
|--|--|
| empty() |	如果 priority_queue 为空的话，返回 true；反之，返回 false。 |
| size() |	返回 priority_queue 中存储元素的个数。 |
| top() |	返回 priority_queue 中第一个元素的引用形式。 |
| push(const T& obj) |	根据既定的排序规则，将元素 obj 的副本存储到 priority_queue 中适当的位置。 |
| push(T&& obj) |	根据既定的排序规则，将元素 obj 移动存储到 priority_queue 中适当的位置。 |
| emplace(Args&&... args) |	Args&&... args 表示构造一个存储类型的元素所需要的数据（对于类对象来说，可能需要多个数据构造出一个对象）。此函数的功能是根据既定的排序规则，在容器适配器适当的位置直接生成该新元素。 |
| pop() |	移除 priority_queue 容器适配器中第一个元素。 |
| swap(priority_queue<T>& other) |	将两个 priority_queue 容器适配器中的元素进行互换，需要注意的是，进行互换的 2 个 priority_queue 容器适配器中存储的元素类型以及底层采用的基础容器类型，都必须相同。 | |

自定义排序实现

```cpp
template <typename T>
class cmp
{
public:
    //重载 () 运算符
    bool operator()(T a, T b)
    {
        return a > b;//自定义这部分
    }
};
```

### pair and make_pair

主要的作用是将两个数据组合成一个数据，两个数据可以是同一类型或者不同类型

一般make_pair都使用在需要pair做参数的位置，可以直接调用make_pair生成pair对象很方便，代码也很清晰。 另一个使用的方面就是pair可以接受隐式的类型转换，这样可以获得更高的灵活度。

例：
std::make_pair(42, '@');
而不必费力写成：
std::pair<int, char>(42, '@')；

```cpp
 template<typename _T1, typename _T2>
    struct pair
    : private __pair_base<_T1, _T2>
    {
      typedef _T1 first_type;    /// @c first_type is the first bound type
      typedef _T2 second_type;   /// @c second_type is the second bound type

      _T1 first;                 /// @c first is a copy of the first object
      _T2 second;                /// @c second is a copy of the second object

#include <utility>
pair<string, double> product1("tomatoes", 3.25);
    pair<string, double> product2;
    pair<string, double> product3;

    product2.first = "lightbulbs"; // type of first is string
    product2.second = 0.99;        // type of second is double

    product3 = make_pair("shoes", 20.00);

    cout << "The price of " << product1.first << " is $" << product1.second << "\n";
    cout << "The price of " << product2.first << " is $" << product2.second << "\n";
    cout << "The price of " << product3.first << " is $" << product3.second << "\n";
    return 0;
```

### tuple

```cpp
#include <iostream>     // std::cout
#include <tuple>        // std::tuple
using std::tuple;
int main()
{
    std::tuple<int, char> first;                             // 1)   first{}
    std::tuple<int, char> second(first);                     // 2)   second{}
    std::tuple<int, char> third(std::make_tuple(20, 'b'));   // 3)   third{20,'b'}
    std::tuple<long, char> fourth(third);                    // 4)的左值方式, fourth{20,'b'}
    std::tuple<int, char> fifth(10, 'a');                    // 5)的右值方式, fifth{10.'a'}
    std::tuple<int, char> sixth(std::make_pair(30, 'c'));    // 6)的右值方式, sixth{30,''c}
    return 0;
}
explicit tuple (const Types&... elems);  //左值方式
template <class... UTypes>
    explicit tuple (UTypes&&... elems);  //右值方式
    //显式的，不能隐式转换，例如 std::tuple<int, char> fifth={10, 'a'}是错误的
```

```cpp
auto first = std::make_tuple (10,'a');   // tuple < int, char >
const int a = 0; int b[3];
auto second = std::make_tuple (a,b);     // tuple < int, int* >
```

![支持的操作](https://i.loli.net/2021/10/27/nhyGYJblk2gL3N6.png)

```cpp
int size;
    //创建一个 tuple 对象存储 10 和 'x'
    std::tuple<int, char> mytuple(10, 'x');
    //计算 mytuple 存储元素的个数
    size = std::tuple_size<decltype(mytuple)>::value;
    //输出 mytuple 中存储的元素
    std::cout << std::get<0>(mytuple) << " " << std::get<1>(mytuple) << std::endl;
    //修改指定的元素
    std::get<0>(mytuple) = 100;
    std::cout << std::get<0>(mytuple) << std::endl;
    //使用 makde_tuple() 创建一个 tuple 对象
    auto bar = std::make_tuple("test", 3.1, 14);
    //拆解 bar 对象，分别赋值给 mystr、mydou、myint
    const char* mystr = nullptr;
    double mydou;
    int myint;
    //使用 tie() 时，如果不想接受某个元素的值，实参可以用 std::ignore 代替
    std::tie(mystr, mydou, myint) = bar;
    //std::tie(std::ignore, std::ignore, myint) = bar;  //只接收第 3 个整形值
    //将 mytuple 和 bar 中的元素整合到 1 个 tuple 对象中
    auto mycat = std::tuple_cat(mytuple, bar);
    size = std::tuple_size<decltype(mycat)>::value;
    std::cout << size << std::endl;
    return 0;
}
```

和pair都可以用于多返回值函数，有时引用或利用自定义结构体更方便。

