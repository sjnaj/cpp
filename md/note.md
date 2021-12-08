- [cpp](#cpp)
  - [from c to cpp](#from-c-to-cpp)
    - [类（Class）和对象（Object）](#类class和对象object)
    - [命名空间（Namespace）和头文件](#命名空间namespace和头文件)
    - [命名规范](#命名规范)
    - [输入输出cin，cout](#输入输出cincout)
    - [bool and const](#bool-and-const)
    - [堆和栈](#堆和栈)
    - [new和delete](#new和delete)
    - [C和C++结构体的差异](#c和c结构体的差异)
    - [inline内联函数](#inline内联函数)
    - [函数的默认参数](#函数的默认参数)
    - [函数重载和其二义性](#函数重载和其二义性)
    - [数组](#数组)
    - [从assert到static_assert](#从assert到static_assert)
    - [C和C++混合编程和debug模式条件编译](#c和c混合编程和debug模式条件编译)
  - [类和对象](#类和对象)
    - [类的定义和对象的创建](#类的定义和对象的创建)
    - [类成员访问权限](#类成员访问权限)
    - [全局函数](#全局函数)
    - [类的作用域](#类的作用域)
    - [C++程序编译原理和man和exec](#c程序编译原理和man和exec)
    - [内存四区](#内存四区)
    - [构造函数及其初始化列表和对象数组](#构造函数及其初始化列表和对象数组)
    - [自定义列表参数(initalizer_list)](#自定义列表参数initalizer_list)
    - [复制构造函数](#复制构造函数)
    - [析构函数](#析构函数)
    - [this指针](#this指针)
    - [static关键字以及静态成员变量和静态成员函数](#static关键字以及静态成员变量和静态成员函数)
    - [const成员变量和成员函数（常成员函数）](#const成员变量和成员函数常成员函数)
    - [const和static成员函数都可以通过参数访问私有变量，限制只是局限于它们的默认调用](#const和static成员函数都可以通过参数访问私有变量限制只是局限于它们的默认调用)
    - [从枚举到枚举类](#从枚举到枚举类)
    - [C++成员对象和封闭类](#c成员对象和封闭类)
    - [友元函数和友元类](#友元函数和友元类)
    - [结构体和对象的异同](#结构体和对象的异同)
    - [位域和union](#位域和union)
  - [重要关键字和部分C++11的特性](#重要关键字和部分c11的特性)
    - [default和delete](#default和delete)
    - [constexpr和const变量](#constexpr和const变量)
    - [constexpr函数](#constexpr函数)
    - [const和volatile](#const和volatile)
    - [\#define,using和typedef以及条件表达式的一些补充](#defineusing和typedef以及条件表达式的一些补充)
    - [decltype](#decltype)
    - [is_same](#is_same)
    - [列表初始化](#列表初始化)
    - [返回数组指针和函数指针](#返回数组指针和函数指针)
    - [lambda匿名函数](#lambda匿名函数)
    - [bitset](#bitset)
    - [随机数](#随机数)
  - [C++string](#cstring)
    - [基本](#基本)
    - [\<cctype\>](#cctype)
    - [size_type](#size_type)
    - [字符串字面量(String literal)](#字符串字面量string-literal)
    - [stringstream](#stringstream)
  - [C++引用](#c引用)
    - [基本()](#基本-1)
    - [返回引用](#返回引用)
    - [指针与引用](#指针与引用)
    - [临时变量、引用参数和const引用](#临时变量引用参数和const引用)
    - [右值引用](#右值引用)
    - [引用限定符](#引用限定符)
    - [移动构造函数和move](#移动构造函数和move)
  - [继承和派生](#继承和派生)
    - [基本(a)](#基本a)
    - [基类和派生类构造和析构函数](#基类和派生类构造和析构函数)
    - [多继承](#多继承)
    - [借助指针访问非public变量](#借助指针访问非public变量)
    - [虚继承](#虚继承)
    - [虚继承的构造函数](#虚继承的构造函数)
    - [向上转型](#向上转型)
  - [多态和虚函数](#多态和虚函数)
    - [基本(2)](#基本2)
    - [虚析构函数的必要性](#虚析构函数的必要性)
    - [纯虚函数和抽象类](#纯虚函数和抽象类)
    - [虚函数的私有](#虚函数的私有)
    - [vtable and vptr](#vtable-and-vptr)
    - [typeid运算符：获取类型信息](#typeid运算符获取类型信息)
    - [sizeof获取类的大小](#sizeof获取类的大小)
    - [RTTI](#rtti)
  - [运算符重载](#运算符重载)
    - [基本(3)](#基本3)
    - [实例](#实例)
    - [成员访问运算符](#成员访问运算符)
    - [类型转换重载，隐式转换风险以及explicit](#类型转换重载隐式转换风险以及explicit)
    - [四种类型转换](#四种类型转换)
    - [函数调用运算符(仿函数)](#函数调用运算符仿函数)
  - [异常处理](#异常处理)
    - [基本(4)](#基本4)
    - [catch](#catch)
    - [throw exceptionData](#throw-exceptiondata)
    - [exception类](#exception类)
    - [noexcept](#noexcept)
  - [动态内存与智能指针](#动态内存与智能指针)
    - [allocator类](#allocator类)
    - [shared_ptr类](#shared_ptr类)
    - [直接管理内存](#直接管理内存)
    - [unique_ptr 类](#unique_ptr-类)
    - [weak_ptr](#weak_ptr)
  - [模板](#模板)
    - [基本(5)](#基本5)
    - [函数模板](#函数模板)
    - [非类型(值)模板参数](#非类型值模板参数)
    - [类模板](#类模板)
    - [模板编译和强类型，弱类型](#模板编译和强类型弱类型)
    - [友元](#友元)
    - [模板类型别名和static成员](#模板类型别名和static成员)
    - [模板默认实参](#模板默认实参)
    - [成员模板](#成员模板)
    - [控制实例化](#控制实例化)
    - [模板实参推断](#模板实参推断)
    - [转发](#转发)
    - [模板类继承](#模板类继承)
    - [重载与模板](#重载与模板)
    - [可变参数函数模板](#可变参数函数模板)
    - [模板特例化(显式具体化)](#模板特例化显式具体化)
  - [threat](#threat)
    - [basic](#basic)
  
# cpp

## from c to cpp

### 类（Class）和对象（Object）

类（Class）可以看做C语言中结构体（Struct）的升级版。C++ 中的类也是一种构造类型，但是进行了一些扩展，类的成员不但可以是变量，还可以是函数；通过类定义出来的变量也有特定的称呼，叫做“对象”。可以将类比喻成图纸，对象比喻成零件，图纸说明了零件的参数（成员变量）及其承担的任务（成员函数）；一张图纸可以生产出多个具有相同性质的零件，不同图纸可以生产不同类型的零件。在 C++ 中，通过类名就可以创建对象，即将图纸生产成零件，这个过程叫做类的**实例化**，因此也称**对象是类的一个实例（Instance）**。有些资料也将**类的成员变量称为属性（Property）**，将**类的成员函数称为方法（Method）**。

因为 C++、Java、C#、PHP 等语言都支持类和对象，所以使用这些语言编写程序也被称为面向对象编程，这些语言也被称为面向对象的编程语言。C语言因为不支持类和对象的概念，被称为面向过程的编程语言。

在C语言中，我们会把重复使用或具有某项功能的代码封装成一个函数，将拥有相关功能的多个函数放在一个源文件，再提供一个对应的头文件，这就是一个模块。使用模块时，引入对应的头文件就可以。

而在 C++ 中，多了一层封装，就是类（Class）。**类由一组相关联的函数、变量组成**，可以将一个类或多个类放在一个源文件，使用时引入对应的类就可以。下面是C和C++项目组织方式的对比：

![a](http://c.biancheng.net/uploads/allimg/190212/100PJ491-0.png)

![b](http://c.biancheng.net/uploads/allimg/190212/100PK0J-1.png)

---

面向对象编程在代码执行效率上绝对没有任何优势，它的主要目的是方便程序员组织和管理代码，快速梳理编程思路，带来编程思想上的革新。

### 命名空间（Namespace）和头文件

namespace 是C++中的关键字，用来定义一个命名空间，语法格式为：

```cpp
#include <iostream>
#define isNs1 1
//#define isGlobal 2
using namespace std;
void func() 
{
    cout<<"::func"<<endl;
}

namespace ns1 {
    void func()
    {
        cout<<"ns1::func"<<endl; 
    }
}

namespace ns2 {
#ifdef isNs1 
    using ns1::func;    /// ns1中的函数
#elif isGlobal
    using ::func; /// 全局中的函数
#else
    void func() 
    {
        cout<<"other::func"<<endl; 
    }
#endif
}

int main() 
{
    ns2::func(); // 会根据当前环境定义宏的不同来调用不同命名空间下的func()函数
    return 0;
}
```

name是命名空间的名字，它里面可以包含变量、函数、类、typedef、#define 等，最后由{ }包围。

使用变量、函数时要指明它们所在的命名空间。以上面的 fp 变量为例，可以这样来使用：
Li::fp = fopen("one.txt", "r");  //使用小李定义的变量 fp
Han::fp = fopen("two.txt", "rb+");  //使用小韩定义的变量 fp
**::是一个新符号，称为域解析操作符，在C++中用来指明要使用的命名空间。**

```cpp
using Li::fp;//using 声明以后的程序中如果出现了未指明命名空间的 fp，就使用 Li::fp；
using namespace Li;//声明整个命名空间,在 using 声明后，如果有未具体指定命名空间的变量产生了命名冲突，那么默认采用命名空间 Li 中的变量。
```

站在编译和链接的角度，代码中出现的变量名、函数名、类名等都是一种符号（Symbol）。有的符号可以指代一个**内存位置**，例如变量名、函数名；有的符号仅仅是一个**新的名称**，例如 typedef 定义的类型别名。

using namespace std;，它声明了命名空间 std，后续如果有未指定命名空间的符号，那么默认使用 std，代码中的 string、cin、cout 都位于命名空间 std。

将 std 直接声明在所有函数外部，这样虽然使用方便，但在中大型项目开发中是不被推荐的，这样做增加了命名冲突的风险，推荐在函数内部声明 std,**但一般为了方便放在函数外部。**

新版 C++ 库中C语言的stdio.h变成了cstdio，stdlib.h变成了cstdlib

使用新C库函数前必须加上std::，但不加可能能通过；用C++的新库即可（功能更全更强大），或者用不带开头c的旧C库


### 命名规范

标识符为复合长单词一般都用驼峰(单词交界后一个单词首字母大写)

变量adj+n;函数v+n

简单变量用小写单词，类名和全局函数名首字母大写，成员函数和复杂变量名首字母小写，常量（define,const）全大写（MAXN），静态变量前加s_,全局变量前加g_,类的数据成员加前缀m_

### 输入输出cin，cout

使用 cout 进行输出时需要紧跟<<运算符，使用 cin 进行输入时需要紧跟>>运算符，这两个运算符可以自行分析所处理的数据类型.

```cpp
cin>>a>>b;
char c;
string str;
//利用空的char和string占位，实现类似scanf的操作
cin<<a<<c<<b;
cin<<str<<a;
    cout<<a<<b<<endl;//count<<x<<'\n';//count<<"a is :\n"<<a;
```

控制符是在头文件**iomanip**中定义的，因此用控制符时，必须包含iomanip头文件。cout流的成员函数是在头文件iostream 中定义的


控制符示例：

```cpp
#include <iostream>
#include <iomanip>
using namespace std;
int main()
{
   int a;
   cout<<"input a:";
   cin>>a;
   cout<<"dec:"<<dec<<a<<endl;  //以十进制形式输出整数
   cout<<"hex:"<<hex<<a<<endl;  //以十六进制形式输出整数a
   cout<<"oct:"<<setbase(8)<<a<<endl;  //以八进制形式输出整数a
   char *pt="China";  //pt指向字符串"China"
   cout<<setw(10)<<pt<<endl;  //指定域宽为,输出字符串
   cout<<setfill('*')<<setw(10)<<pt<<endl;  //指定域宽,输出字符串,空白处以'*'填充
   double pi=22.0/7.0;  //计算pi值
   //按指数形式输出,8位精度
   cout<<setiosflags(ios::scientific)<<setprecision(8);
   cout<<"pi="<<pi<<endl;  //输出pi值
   cout<<"pi="<<setprecision(4)<<pi<<endl;  //4位精度
   cout<<"pi="<<setiosflags(ios::fixed)<<pi<<endl;  //改为小数形式输出
   return 0;
}
```


| 流成员函数   | 与之作用相同的控制符 | 作用                                                                                |
| ------------ | -------------------- | ----------------------------------------------------------------------------------- |
| precision(n) | setprecision(n)      | 设置实数的精度为n位                                                                 |
| width(n)     | setw(n)              | 设置字段宽度为n位，**右对齐**                                                       |
| fill(c)      | setfill(c)           | 设置填充宇符c                                                                       |
| setf()       | setiosflags()        | 设置输出格式状态，括号中应给出**格式状态**，内容与控制符setiosflags括号中的内容相同 |
| unsetf()     | resetioflags()       | 终止已设置的输出格式状态，在括号中应指定内容                                        |


**设置字段宽度和填充字符的函数或控制符只对其后的第一个输出项有效**.

流成员函数setf和控制符setiosflags括号中的参数表示格式状态，它是通过格式标志来指定的。格式标志在类ios中被定义为枚举值。因此在引用这些格式标志时要在前面加上**类名ios和域运算符“::”**

流成员函数示例：

```cpp
#include <iostream>
using namespace std;
int main( )
{
   int a=21
   cout.setf(ios::showbase);//显示基数符号(0x或)
   cout<<"dec:"<<a<<endl;         //默认以十进制形式输出a
   cout.unsetf(ios::dec);         //终止十进制的格式设置
   cout.setf(ios::hex);           //设置以十六进制输出的状态
   cout<<"hex:"<<a<<endl;         //以十六进制形式输出a
   cout.unsetf(ios::hex);         //终止十六进制的格式设置
   cout.setf(ios::oct);           //设置以八进制输出的状态
   cout<<"oct:"<<a<<endl;         //以八进制形式输出a
   cout.unseft(ios::oct);
   char *pt="China";              //pt指向字符串"China"
   cout.width(10);                //指定域宽为
   cout<<pt<<endl;                //输出字符串
   cout.width(10);                //指定域宽为
   cout.fill('*');                //指定空白处以'*'填充
   cout<<pt<<endl;                //输出字符串
   double pi=22.0/7.0;            //输出pi值
   cout.setf(ios::scientific);    //指定用科学记数法输出
   cout<<"pi=";                   //输出"pi="
   cout.width(14);                //指定域宽为
   cout<<pi<<endl;                //输出pi值
   cout.unsetf(ios::scientific); //终止科学记数法状态
   cout.setf(ios::fixed);        //指定用定点形式输出
   cout.width(12);               //指定域宽为
   cout.setf(ios::showpos);      //正数输出“+”号
   cout.setf(ios::internal);     //数符出现在左侧
   cout.precision(6);            //6位精度
   cout<<pi<<endl;               //输出pi,注意数符“+”的位置
   return 0;
}
```  

系统默认指定为dec，因此要改变为hex或oct，也应当先用unsetf 函数终止原来设置。

如果两个相互矛盾的标志同时被设置，如先设置 setiosflags(ios::fixed)，然后又设置 setiosflags(ios::scientific)，那么结果可能就是两个标志都不起作用。因此，在设置了某标志，又要设置其他与之矛盾的标志时，就应该用 **unset或resetiosflag**清除原先的标志。

用setf 函数设置格式状态时，可以包含两个或多个格式标志，由于这些格式标志在ios类中被定义为枚举值，每一个格式标志以一个二进位代表，因此可以用位或运算符“|”组合多个格式标志。如倒数第5、第6行可以用下面一行代替：
    cout.setf(ios::internal | ios::showpos);  //包含两个状态标志，用"|"组合；

 控制格式组合： cout<<setiosflags(ios::fixed)<<setiosflags(ios::right)<<setprecision(2);

 cout>>setw(12)>>setprecision(6)==cout.width(12);cout.precision(6);

 **组合控制各个控制符或函数的顺序不特定**.

| 格式标志        | 作用                                                       |
| --------------- | ---------------------------------------------------------- |
| ios::left       | 输出数据在本域宽范围内向左对齐                             |
| ios::right      | 输出数据在本域宽范围内向右对齐                             |
| ios::internal   | 数值的符号位在域宽内左对齐，数值右对齐，中间由填充字符填充 |
| ios::dec        | 设置整数的基数为10                                         |
| ios::oct        | 设置整数的基数为8                                          |
| ios::hex        | 设置整数的基数为16                                         |
| ios::showbase   | 强制输出整数的基数(八进制数以0打头，十六进制数以0x打头)    |
| ios::showpoint  | 强制输出浮点数的小点和尾数0                                |
| ios::uppercase  | 在以科学记数法格式E和以**十六进制**输出字母时以大写表示    |
| ios::showpos    | 对正数显示“+”号                                            |
| ios::scientific | 浮点数以科学记数法格式输出                                 |
| ios::fixed      | 浮点数以定点格式(小数形式)输出                             |
| ios::unitbuf    | 每次输出之后刷新所有的流                                   |
| ios::stdio      | 每次输出之后清除stdout, stderr                             |

彩色格式化输出，控制格式与printf相同

```cpp
#include <iostream>
 
//the following are UBUNTU/LINUX ONLY terminal color codes.
#define RESET   "\033[0m"
#define BLACK   "\033[30m"      /* Black */
#define RED     "\033[31m"      /* Red */
#define GREEN   "\033[32m"      /* Green,是本机终端的颜色 */ 
#define YELLOW  "\033[33m"      /* Yellow */
#define BLUE    "\033[34m"      /* Blue */
#define MAGENTA "\033[35m"      /* Magenta */
#define CYAN    "\033[36m"      /* Cyan */
#define WHITE   "\033[37m"      /* White */
#define BOLDBLACK   "\033[1m\033[30m"      /* Bold Black */
#define BOLDRED     "\033[1m\033[31m"      /* Bold Red */
#define BOLDGREEN   "\033[1m\033[32m"      /* Bold Green */
#define BOLDYELLOW  "\033[1m\033[33m"      /* Bold Yellow */
#define BOLDBLUE    "\033[1m\033[34m"      /* Bold Blue */
#define BOLDMAGENTA "\033[1m\033[35m"      /* Bold Magenta */
#define BOLDCYAN    "\033[1m\033[36m"      /* Bold Cyan */
#define BOLDWHITE   "\033[1m\033[37m"      /* Bold White */
 
int main(int argc, const char * argv[])
{
 
    // insert code here...
    std::cout< <RED      <<"Hello, World! in RED\n";
    std::cout<<GREEN    <<"Hello, World! in GREEN\n";
    std::cout<<YELLOW   <<"Hello, World! in YELLOW\n";
    std::cout<<BLUE     <<"Hello, World! in BLUE\n";
    std::cout<<MAGENTA  <<"Hello, World! in MAGENTA\n";
    std::cout<<CYAN     <<"Hello, World! in CYAN\n";
    std::cout<<WHITE    <<"Hello, World! in WHITE\n";
    std::cout<<BOLDRED  <<"Hello, World! in BOLDRED\n";
    std::cout<<BOLDCYAN <<"Hello, World! in BOLDCYAN\n";
    return 0;
}
```

### bool and const

C++ 新增了 bool 类型（布尔类型），它一般占用 1个字节长度。bool 类型只有两个取值，true 和 false：true 表示“真”，false 表示“假”

**bool flag;  //定义布尔变量**   flag = a > b;

C和C++中全局 const 变量的作用域相同，都是当前文件，不同的是它们的可见范围：**C语言中 const 全局变量的可见范围是整个程序，在其他文件中使用 extern 声明后就可以使用；而C++中 const 全局变量的可见范围仅限于当前文件，在其他文件中不可见，所以它可以定义在头文件中，多次引入后也不会出错。**

如果使用的是 GCC，那么可以通过添加 extern 关键字来增大 C++ 全局 const 变量的可见范围，如下所示：

extern const int n = 10;

这样 n 的可见范围就变成了整个程序，在其他文件中使用 extern 声明后就可以使用了。不过这种方式只适用于 GCC，不适用于 VS/VC。

\#define 定义的常量仅仅是字符串的替换，**不会进行类型检查**，而 const 定义的常量是有类型的，编译器会进行类型检查，相对来说比 #define 更安全，所以鼓励使用 const 代#define。

const int n = 10;

在C++中，printf("%d\n", n);语句在编译时就将 n 的值替换成了 10，效果和printf("%d\n", 10);一样，**不管 n 所在的内存如何变化，都不会影响输出结果**。

### 堆和栈

栈是机器系统提供的数据结构，计算机会在底层对栈提供支持，例如，分配专门的寄存器存放栈的地址，压栈出栈都有专门的执行指令，这就决定了栈的效率比较高。一般而言，只要栈的剩余空间大于所申请空间，系统就将为程序提供内存，否则将报异常提示栈溢出。

而堆则不同，它是由 C/C++ 函数库提供的，它的机制也相当复杂。例如，为了分配一块堆内存，首先应该知道操作系统有一个记录空闲内存地址的链表，当系统收到程序的申请时，会遍历该链表，寻找第一个空间大于所申请空间的堆节点，然后将该节点从空闲节点链表中删除，并将该节点的空间分配给程序。而对于大多数系统，会在这块内存空间的首地址处记录本次分配的大小，这样，代码中的 delete 语句才能正确释放本内存空间。另外，由于找到的堆节点的大小不一定正好等于申请的大小，系统会自动将多余的那部分重新放入空闲链表中。很显然，堆的分配效率比栈要低得多。

### new和delete

在C++中，这两个函数仍然可以使用，但是C++又新增了两个关键字，new 和 delete：new 用来动态分配内存，delete 用来释放内存。

**new和delete是关键字，malloc和free是函数。**

用 new 和 delete 分配内存更加简单：

```cpp
int *p = new int;  //分配1个int型的内存空间
delete p;  //释放内存
```

**new 操作符会根据后面的数据类型来推断所需空间的大小**。

如果希望分配一组连续的数据，可以使用 new[]：

```cpp
int *p = new int[10];  //分配10个int型的内存空间
delete[] p;
```

用 new[] 分配的内存需要用 delete[] 释放，它们是一一对应的。

和 malloc() 一样，new 也是在堆区分配内存，必须手动释放，否则只能等到程序运行结束由操作系统回收。为了避免内存泄露，**通常 new 和 delete、new[] 和 delete[] 操作符应该成对出现**，并且不要和C语言中 malloc()、free() 一起混用。

可以delete空指针，但不能重复释放一块空间

删除指针后一定要置空

malloc 申请完空间之后不会对内存进行必要的初始化，而 new 可以。

string *ps = new string("hello world");

new的初始化

```cpp
int* buffer = new int(); // 分配的一个int初始化为0
int* buffer = new int(0); // 分配的一个int初始化为0
int* buffer = new int[512](); // 分配的512个int都初始化为0
int* buffer = new int[512](0); // 语法错误！！！
int* buffer = new int[512](5); // 语法错误！！！
//使用初始化列表，C++11
int* buffer = new int[512]{}; // 512个int都初始化为0
int* buffer = new int[512]{5}; // 第一个int初始化为5，其余初始化为0
int* buffer = new int[512]{1, 2, 3, 4}; // 前4个int分别初始化为1、2、3、4，其余int初始化为0
Student *stud=new Student[3]{Student(1001,18,87),Student(1002,19,76),Student(1003,18,72)};
```

```cpp
void *operator new(size_t);     //allocate an object
void *operator delete(void *);    //free an object

void *operator new[](size_t);     //allocate an array
void *operator delete[](void *);    //free an array
```

如果想定制自己的在堆对象被建立时的内存分配过程，可以自定义operator new函数。然后使用new操作符，new操作符会调用定制的operator new。

operator new分配内存并返回指针，相当于malloc.

new在调用operator new后还会调用（默认）构造函数（如果有的话，内置类型没有）；

new [] 一个对象数组时，需要保存数组的维度，C++ 的做法是在分配数组空间时多分配了 4 个字节的大小，专门保存数组的大小，在 delete [] 时就可以取出这个保存的数，**就知道了需要调用析构函数多少次了。**

申请时在数组对象的上面还**多分配了 4 个字节用来保存数组的大小**，但是最终返回的是对象数组的指针，而不是所有分配空间的起始地址。

调用析构函数的次数是从数组对象指针前面的 4 个字节中取出；
传入 operator delete[] 函数的参数不是数组对象的指针 pAa，而是 pAa 的值减 4。

如果不调用析构函数呢（如内置类型， int 数组）？在 new [] 时就没必要多分配那 4 个字节， delete [] 时直接到第二步释放为 int 数组分配的空间。如果这里使用 delete pia;那么将会调用 operator delete 函数，传入的参数是分配给数组的起始地址，所做的事情就是释放掉这块内存空间。不存在问题的。

```cpp
class A *pAa = new class A[3];
delete pAa;
```

调用一次 pAa 指向的对象的析构函数；
调用 operator delete(pAa); 释放内存。
显然，这里只对数组的第一个类对象调用了析构函数，后面的两个对象均没调用析构函数，如果类对象中申请了大量的内存需要在析构函数中释放，而你却在销毁数组对象时少调用了析构函数，这会造成内存泄漏。

```cpp
typedef struct _CrtMemBlockHeader
{
    struct _CrtMemBlockHeader *pBlockHeaderNext;//下一个结构体指针
    struct _CrtMemBlockHeader *pBlockHeaderPrev;//上一个结构体指针
    char    *szFileName;//szFileName是存储的发起分配操作的那行代码所在的文件的路径和名称
    int       nLine;//代码行号
    size_t  nDataSize;//请求分配的大小(字节)
    int        nBlockUse;//块类型。其中，1是自己调用、2为库函数调用、0为未调用。
    long     lRequest;   //堆申请次数
    unsigned char gap[nNoMansLandSize]; //溢出标志。其中，nNoMansLandSize = 4
} _CrtMemBlockHeader;
```

\<your data\>前后各4个字节的 gap[],前后的gap都为 0xFD. （前一个在_CrtMemBlockHeader里），如果你在自己的Data里写, 不小心越了界(前面或者后面), 系统在delete的时候通过检查 gap 的数据是否还为0xFD，就知道你有没有越界. 当然了, 如果恰好写的都是0xFD, 那就没法知道了.

```cpp
+--------------------------------------------------------------------------+
|   +--------------------------+              +--------------------------+ |
| +-> | pHead = pBlockHeaderNext | -----------> | pBlockHeaderNext = NULL |  |
| --- ||--------------------------| |
    | pBlockHeaderPrev = NULL |  | pBlockHeaderPrev      ->- | -+ |
    | ----------------------- ||--------------------------|
    | ...... |  | ...... |
    | ------ ||--------------------------|
    | gap: FDFDFDFD |  | gap: FDFDFDFD |
    | ------------- ||--------------------------|
    | pA: CDCDCDCD |  | pB: CDCDCDCD |
    | ------------ ||--------------------------|
    |anotherGap: FDFDFDFD      |              |anotherGap: FDFDFDFD      |
    +--------------------------+              +--------------------------+
```

**这个head结构体也是free不用传入大小的原因**。

对于没有构造函数的内置类型的分配形式

**_CrtMemBlockHeader + \<Your Data\>+gap[nNoMansLandSize]**;这类数据用delete和delete[]都一样！

而对于有构造函数的类型数组则是：

**_CrtMemBlockHeader +数组元素个数+ \<Your Data\> +gap[nNoMansLandSize];**

delete PaA会先执行PaA（+0）的析构函数后直接将指针前的八个字节当作phead(加[]就会先向前退4个字节再确认phead)，**溢出标志gap发生变化**，可能会出现Assert fail即段错误。operator delete产生错误。

运行时不会出错，只调用了一个析构函数然后释放内存。debug模式时会出错；

**在release模式（本编译器）使用默认析构函数时不会报错且不会储存数组元素个数，自定义析构函数就会储存数组元素个数并报错。** ***可能是默认析构函数以和为贵***

```cpp

有~A(){}
0x55555556aea8:	0x21	0x00	0x00	0x00	0x00	0x00	0x00	0x00
0x55555556aeb0:	！0x04	0x00	0x00	0x00	0x00	0x00	0x00	0x00
0x55555556aeb8:	0x01	0x00	0x00	0x00	0x02	0x00	0x00	0x00
0x55555556aec0:	0x03	0x00	0x00	0x00	0x04	0x00	0x00	0x00
0x55555556aec8:	0x41	0xf1	0x00	0x00	0x00	0x00	0x00	0x00
0x55555556aed0:	0x00	0x00	0x00	0x00	0x00	0x00	0x00	0x00
0x55555556aed8:	0x00	0x00
没有：
0x55555556aea0:	0x00	0x00	0x00	0x00	0x00	0x00	0x00	0x00
0x55555556aea8:	！0x21	0x00	0x00	0x00	0x00	0x00	0x00	0x00
0x55555556aeb0:	0x01	0x00	0x00	0x00	0x02	0x00	0x00	0x00
0x55555556aeb8:	0x03	0x00	0x00	0x00	0x04	0x00	0x00	0x00
0x55555556aec0:	0x00	0x00	0x00	0x00	0x00	0x00	0x00	0x00
0x55555556aec8:	0x41	0xf1	0x00	0x00	0x00	0x00	0x00	0x00
0x55555556aed0:	0x00	0x00

```

总的来说，记住一点即可：**new/delete、new[]/delete[] 要配套使用总是没错的**！

**-exec x/50xb p-4:50个，16进制，一字节，从p前4*4（int）处开始；**

### C和C++结构体的差异

| C                                                      | C++                                                            |
| ------------------------------------------------------ | -------------------------------------------------------------- |
| 不能将函数放在结构体声明                               | 能将函数放在结构体声明                                         |
| 在C结构体声明中不能使用C++访问修饰符。                 | public、protected、private 在C++中可以使用。                   |
| 在C中定义结构体变量，如果使用了下面定义必须加struct。  | 可以不加struct                                                 |
| 结构体不能继承（没有这一概念）。                       | 可以继承                                                       |
| 若结构体的名字与函数名相同，可以正常运行且正常的调用！ | 若结构体的名字与函数名相同，使用结构体，只能使用带struct定义！ |

### inline内联函数

为了消除函数调用的时空开销，C++ 提供一种提高效率的方法，即在编译时将函数调用处用函数体替换，类似于C语言中的宏展开。这种在函数调用处直接嵌入函数体的函数称为内联函数（Inline Function），又称内嵌函数或者内置函数。

指定内联函数的方法很简单，只需要在函数定义处增加 inline 关键字。注意，要在函数**定义处添加 inline 关键字**，在函数声明处添加 inline 关键字虽然没有错，但这种做法是无效的，编译器会忽略函数声明处的 inline 关键字。

当函数比较复杂时，函数调用的时空开销可以忽略，大部分的 CPU 时间都会花费在执行函数体代码上，所以我们一般是将非常短小的函数声明为内联函数。

由于内联函数比较短小，我们通常的做法是**省略函数原型，将整个函数定义（包括函数头和函数体）放在本应该提供函数原型的地方**。

```cpp
#include <iostream>
using namespace std;
//内联函数，交换两个数的值
inline void swap(int *a, int *b){
    int temp;
    temp = *a;
    *a = *b;
    *b = temp;
}
int main(){
    int m, n;
    cin>>m>>n;
    cout<<m<<", "<<n<<endl;
    swap(&m, &n);
    cout<<m<<", "<<n<<endl;
    return 0;
}
```

使用内联函数的缺点也是非常明显的，编译后的程序会存在多份相同的函数拷贝，如果被声明为内联函数的函数体非常大，那么编译后的程序体积也将会变得很大，所以再次强调，一般只将那些短小的、频繁调用的函数声明为内联函数。

对函数作 inline 声明只是程序员对编译器提出的一个建议，而不是强制性的，并非一经指定为 inline 编译器就必须这样做。编译器有自己的判断能力，它会根据具体情况决定是否这样做。

\#define SQ(y) ( (y)*(y) )

发生函数调用时，编译器会先对实参进行计算，再将计算的结果传递给形参，并且函数执行完毕后会得到一个值，而不是得到一个表达式，这和简单的字符串替换相比省去了很多麻烦，所以在编写C++代码时推荐**使用内联函数来替换带参数的宏**。

和宏一样，**内联函数可以定义在头文件中（不用加 static 关键字）**，并且头文件被多次#include后也不会引发重复定义错误。这一点和非内联函数不同，**非内联函数是禁止定义在头文件中的，它所在的头文件被多次#include后会引发重复定义错误。**

内联函数虽然叫做函数，在定义和声明的语法上也和普通函数一样，但它已经失去了函数的本质。函数是一段可以重复使用的代码，它位于虚拟地址空间中的代码区，也占用可执行文件的体积，而内联函数的代码在编译后就被消除了，不存在于虚拟地址空间中，没法重复使用。

在多文件编程时,可以将内联函数的定义直接放在头文件中，并且禁用内联函数的声明（声明是多此一举）。

### 函数的默认参数  

在C++中，定义函数时可以给形参指定一个默认的值，这样调用函数时如果没有给这个形参赋值（没有对应的实参），那么就使用这个默认的值。也就是说，调用函数时可以省略有默认值的参数。如果用户指定了参数的值，那么就使用用户指定的值，否则使用参数的默认值。

```cpp
#include<iostream>
using namespace std;
//带默认参数的函数
void func(int n, float b=1.2, char c='@'){
    cout<<n<<", "<<b<<", "<<c<<endl;
}
int main(){
    //为所有参数传值
    func(10, 3.5, '#');
    //为n、b传值，相当于调用func(20, 9.8, '@')
    func(20, 9.8);
    //只为n传值，相当于调用func(30, 1.2, '@')
    func(30);
    return 0;
}
```

C++规定，默认参数只能放在形参列表的最后，而且**一旦为某个形参指定了默认值，那么它后面的所有形参都必须有默认值**。实参和形参的传值是从左到右依次匹配的，默认参数的连续性是保证正确传参的前提。

**不能在函数定义和函数声明中同时指定默认参数,在给定的作用域中一个形参只能被赋予一次默认参数。换句话说，函数的后续声明只能为之前那些没有默认值的形参添加默认值，而且该形参右侧的所有形参必须都有默认值。**

### 函数重载和其二义性

C++ 允许多个函数拥有相同的名字，只要它们的参数列表不同就可以，这就是函数的重载（**Function Overloading**）。借助重载，一个函数名可以有多种用途。

**参数列表又叫参数签名**，包括参数的类型、参数的个数和参数的顺序，只要有一个不同就叫做参数列表不同。

```cpp
void Swap(int *a, int *b){
    int temp = *a;
    *a = *b;
    *b = temp;
}
//交换 float 变量的值
void Swap(float *a, float *b){
    float temp = *a;
    *a = *b;
    *b = temp;
}
//交换 char 变量的值
void Swap(char *a, char *b){
    char temp = *a;
    *a = *b;
    *b = temp;
}

```

C++代码在编译时会根据参数列表对函数进行重命名，例如void Swap(int a, int b)会被重命名为_Swap_int_int，void Swap(float x, float y)会被重命名为_Swap_float_float。当发生函数调用时，编译器会根据传入的实参去逐个匹配，以选择对应的函数，如果匹配失败，编译器就会报错，这叫做**重载决议（Overload Resolution**）。

函数重载仅仅是语法层面的，本质上它们还是不同的函数，占用不同的内存，入口地址也不一样。

1. 参数数目引发的歧义

   ```cpp
   1 int get(){
   2     return 5;
   3 }
   4 int get(int a = 5){
   5     return a;
   6 }
   7 //调用get()
   //不给参数和有默认参数会造成歧义。
   ```

2. 参数隐式转换引发的歧义

   ```cpp
   1 int get(int m){
   2     return m;
   3 }
   4  
   5 long get(long m){
   6     return m;
   7 }
   //double d = 1.234;
   //调用get(d);double既可以隐式转换为long，也可以是int,或者说一般的数值类型之间都可以进行隐式类型转换，故无法确定哪一个更加匹配。
   ```

3.类型型相关歧义（较深内容，先放下）

### 数组

与普通变量名相比，数组名既有一般性也有特殊性：一般性表现在数组名也用来指代特定的内存块，也有类型和长度；特殊性表现在数组名有时候会转换为一个指针，而不是它所指代的数据本身的值

```cpp

int  a[]={1,2,3,4,5};
int *p=&a[2];
int x=p[-2];///p[-2]==a[0];vector和string不支持

vector<int>vi(begin(a), end(a));
vector<int>vi(a+1, a+4);
//应尽量使用vector和迭代器，避免使用容易出错的内置数组和指针

//type[size]:数组类型;type(*)[size]：数组指针
//数组名通常会被转换成指向首元素的常量指针,int [size]->int * const,
//指向数组的指针和数组名都可以用[]访问元素，但指针是迭代器，而数组名不能通过自增自减的方式访问
//数组指针自增一次偏移量是整个数组的大小

//使用引用限定符和decltype不会发生这种转换
int a[4]={1,2,3,4};
int ai[3][4]={1,2,3,4,5,6,7,8,9,10,11,12};
int row[4]=ai[1];//错误，array must be initialized with a brace-enclosed initializer
int (&p)[4]=a;//引用绑定
auto &p=a;//与上面的等价
auto p=a;//普通指针
auto p=(int(*)[4])a//数组指针
(decltype(ai))ai;//ISO C++ forbids casting to an array type，不能强制转换为数组类型
int (&row)[4]=ai[1];//row绑定到ai[1]数组上
decltype(ai[1]) row=ai[1];//和上一个等价
decltype(a) p=a;//和引用绑定不等价，虽然a和ai[1]都是一位数组，但类型不同，前者是int[size],后者是int(&)[size]，非引用语句相当于一个错误的初始化语句。

auto &p=a;//引用绑定，即别名
auto p=a;//指针(type*),一般用作(列)迭代器
auto p=(int(*)[size])a//数组指针，用作行迭代器

for(auto p=ai;p!=ai+3;p++)
    {
        for(auto q=*p;q!=*p+4;q++)//*p是数组类型，被自动转换为指向首元素的指针
        {
            cout<<*q<<' ';
        }
        cout<<endl;
    }
for(auto p=begin(ai);p!=end(ai);p++)//简洁版
    {
        for(auto q=begin(*p);q!=end(*p);q++)
        {cout<<*q<<' ';}
        cout<<endl;
    } 

    //使用范围for语句，维度是数组类型的一部分，不用设置终点
     for(auto &row:ai)//所有外层必须加&防止被自动转成指针
    {
        for(auto& col:row)//最内侧不需要修改时可以不加&
        {
            cout<<col<<' ';
        }
        cout<<endl;
    }
   for(decltype(ai[0]) row : ai)//相当于这样
        for(decltype(ai[0][0]) col : row)
               { cout << col << endl;}
            cout<endl;

①因为new申请的数组是动态的，因此不能使用begin()和end()函数对动态数组进行操作
②不能使用for each对数组进行遍历，但是可以使用for循环操作动态数组
```

### 从assert到static_assert

```cpp
assert 宏的原型定义在 <assert.h>（C）、（C++）中。其作用是如果它的条件返回错误，则终止程序执行。

//在发布模式下，我们不应该再依赖 assert() 宏，因为程序一旦出错，assert() 会抛出一段用户看不懂的提示信息，并毫无预警地终止程序执行，这样会严重影响软件的用户体验，所以在发布模式下应该让 assert() 失效。
#define NDEBUG          // 加上这行，则 assert 不可用


```

```cpp
static_assert()接受两个参数。第1个参数是整型常量表达式，第2个参数是一个字符串。如果第 1 个表达式求值为 0（或_False），编译器会显示字符 串，而且不编译该程序。
static_assert(sizeof(double) == 2 * sizeof(int), "double not twice int size");
```

assert()可以导致正在运行的程序中止，而static_assert()会导致程序无法通过编译。

### C和C++混合编程和debug模式条件编译

debug模式有时需要打印一些release模式不需要的调试用日志

```cpp
ANSI C标准中有几个标准预定义宏（也是常用的）：

__LINE__：在源代码中插入当前源代码行号；

__FILE__：在源文件中插入当前源文件名；

__DATE__：在源文件中插入当前的编译日期

__TIME__：在源文件中插入当前编译时间；

__STDC__：当要求程序严格遵循ANSI C标准时该标识被赋值为1；

__cplusplus：当编写C++程序时该标识符被定义。
#define _DEBUG 1 //#define _DEBUG
#if _DEBUG == 1  //#ifdef _DEBUG
//赋值易于控制
#define LOG(format, ...) printf("LOG:" format, ##__VA_ARGS__)//##__VA_ARGS__可省略可变参数
#define LOG_M(format, ...) fprintf(stderr, "\033[1;35m  LOG_G(%s:%d):\t\033[0m" format, __func__, __LINE__, ##__VA_ARGS__)//关闭颜色时要设置为终端颜色，本机为绿色0m32
#define LOG_R(format, ...) fprintf(stderr, "\033[1;31m  LOG_R(%s,%d):\t\033[0m" format, __func__, __LINE__, ##__VA_ARGS__)//注意两个格式列表之间的空格
#else
#define LOG(format, ...)//空定义，否则_DEBUG为0时会报错
#define LOG_M(format, ...)
#define LOG_R(format, ...)
#endif

int i=0;
    LOG("hello %d\n", i++);
     LOG_R("hello %d\n", i++);
      LOG_M("hello %d\n", i++);

/* LOG:hello 0
  LOG_R(main,51):       hello 1
  LOG_G(main:60):       hello 2
  */
```

直接混合会出问题

```cpp
/myfun.h
void display();
//myfun.c
#include <stdio.h>
#include "myfun.h"
void display(){
   printf("C++：http://c.biancheng/net/cplus/");
}
//main.cpp
#include <iostream>
#include "myfun.h"
using namespace std;
int main(){
   display();
   return 0;
}
```

因为 C++ 和 C 编译程序的方式存在差异。C 语言是不支持函数重载的，它不会在编译阶段对函数的名称做较大的改动.

C++程序中的非标准C头文件需要前面用extern “C“{}包起来;

C程序不能识别extern

```cpp
extern "C" #include "lalala.h" //一个不用大括号
```

或者直接更改非标准的头文件（c和c++程序都能直接引用）

```cpp
#ifdef __cplusplus//（函数声明出现两次)
extern "C" void display();
#else
void display();
#endif
```

实际开发中，使用这种方式,函数只需写一遍

```cpp
#ifdef __cplusplus//（函数声明出现一次）
extern "C" {
#endif//前面加这些

void display();//对外接口
Func1...;
Func2...;

#ifdef __cplusplus//后面加这些
}
#endif 
//
```

C中的某些库在C++中被改编。并去掉.h加上c:stdlib.h->cstdlib

## 类和对象

### 类的定义和对象的创建

类的**成员变量**称为**类的属性（Property）**，将 类的**成员函数**称为**类的方法（Method）**。在面向对象的编程语言中，经常把**函数（Function）称为方法（Method**）。

class是 C++ 中新增的关键字，专门用来定义类。Student是类的名称；类名的首字母一般大写，以和其他的标识符区分开。{ }内部是类所包含的成员变量和成员函数，它们统称为类的成员（Member）；由{ }包围起来的部分有时也称为类体，和函数体的概念类似。public也是 C++ 的新增关键字，它只能用在类的定义中，表示类的成员变量或成员函数具有“公开”的访问权限。

在C++中，**struct 类似于 class，既可以包含成员变量，又可以包含成员函数。**

C++中的 struct 和 class 基本是通用的，唯有几个细节不同：
使用 class 时，类中的成员默认都是**private**属性的；而使用 struct 时，结构体中的成员默认都是 **public**属性的。

class 继承默认是 **private 继承**，而 struct 继承默认是 **public 继承**。

**class 可以使用模板，而 struct 不能**.

```cpp
class Student{
public:
    //成员变量
    char *name;
    int age;
    float score;
    //成员函数
    void say(){
        cout<<name<<"的年龄是"<<age<<"，成绩是"<<score<<endl;
    }//*在这里也可以创建对象
};
class Student LiLei;  继承于c语言
Student LiLei;  //class省略，用类名直接指向类类型
```


类只是一个模板（Template），编译后不占用内存空间，所以在定义类时不能对成员变量进行初始化，因为没有地方存储数据。只有在创建对象以后才会给成员变量分配内存，这个时候就可以赋值了。

实例化不同对象时，**只给数据分配空间**，各个对象**调用函数时都都跳转到(内联函数例外)找到函数在代码区的入口执行**，可以节省拷贝多份代码的空间

*对象指针*.

```cpp
Student stu;
Student *pStu = &stu;//栈上创建

Student *pStu = new Student;//堆上创建

```

**访问对象的成员变量和成员函数的方法与访问结构体成员的方法一致。**类用.类指针用->;

**栈内存是程序自动管理的**，不能使用 delete 删除在栈上创建的对象；**堆内存由程序员管理**，对象使用完毕后可以通过 delete 删除。在实际开发中，new 和 delete 往往成对出现，以保证及时删除不再使用的对象，防止无用内存堆积。

类的成员变量和普通变量一样，也有数据类型和名称，占用固定长度的内存。但是，在定义类的时候不能对成员变量赋值，因为类只是一种数据类型或者说是一种模板，本身不占用内存空间，而变量的值则需要内存来存储。

类的成员函数也和普通函数一样，都有返回值和参数列表，它与一般函数的区别是：成员函数是一个类的成员，出现在类体中，它的作用范围由类来决定；而普通函数是独立的，作用范围是全局的，或位于某个命名空间内。

当成员函数定义在类外时，就必须在函数名前面加上类名予以限定。**::被称为域解析符（也称作用域运算符或作用域限定符）**，用来**连接类名和函数名**，指明当前函数属于哪个类。**成员函数必须先在类体中作原型声明，然后在类外定义**，也就是说类体的位置应在函数定义之前。

**在类体中定义的成员函数会自动成为内联函数，在类体外定义的不会**。 内联函数一般不是我们所期望的，它会将函数调用处用函数体替代，所以我建议在类体内部对成员函数作声明，而在类体外部进行定义。比较短小的函数可以直接在类体内定义，免去声明。

### 类成员访问权限

c++通过 **public、protected、private 三个关键字来控制成员变量和成员函数的访问权限，它们分别表示公有的、受保护的、私有的，被称为成员访问限定符**。所谓访问权限，就是你能不能使用该类中的成员

在**类的内部（定义类的代码内部）**，无论成员被声明为 public、protected 还是 private，**都是可以互相访问的**，**没有访问权限的限制**。

在类的外部（定义类的代码之外），只能通过对象访问成员，并且**通过对象只能访问 public 属性的成员**，不能访问 private、protected 属性的成员。


**类的声明和成员函数的定义都是类定义的一部分**，在实际开发中，我们通常将类的声明放在头文件中，而将成员函数的定义放在源文件中。

类中的成员变量 m_name、m_age 和m_ score 被设置成 private 属性，在类的外部不能通过对象访问。也就是说，**私有成员变量和成员函数只能在类内部使用，在类外都是无效的**。

**成员变量大都以m_开头**，这是约定成俗的写法，不是语法规定的内容。以m_开头既可以一眼看出这是成员变量，又可以和成员函数中的形参名字区分开。

给成员变量赋值的函数通常称为**set 函数**，它们的名字通常以set开头，后跟成员变量的名字；读取成员变量的值的函数通常称为 **get 函数**，它们的名字通常以get开头，后跟成员变量的名字。**用public的函数可以改变private变量的值**。

声明为 private 的成员和声明为 public 的成员的次序任意，既可以先出现 private 部分，也可以先出现 public 部分。**如果既不写 private 也不写 public，就默认为 private**。

在一个类体中，private 和 public 可以分别出现多次。每个部分的有效范围到出现另一个访问限定符或类体结束时（最后一个右花括号）为止。但是为了使程序清晰，应该养成这样的习惯，使每一种成员访问限定符在类定义体中只出现一次。

```cpp
class func
{
public:
    void hanoi(int, char, char, char);
    void move(int, char, char);
   static int m_m;//只算是声明
   int m_n;
};
int func::m_m=1;//静态变量还要在类外定义；
```

### 全局函数

当初学者刚开始学习编写具有多个函数的程序时，可能会想要将所有变量全局化，这样它们就可以被程序中的任何函数访问，而不作为实参传递。虽然这种方法可能使程序创建更容易，但通常会在后期导致很多问题，比如：
全局变量使调试变得困难。**程序中的任何语句都可以更改全局变量的值**。如果发现在全局变量中存储了错误的值，则必须跟踪访问它的每个语句，以确定错误值来自哪里。在具有成千上万行代码的程序中，这是非常困难的。
使用全局变量的函数通常要依赖这些变量。如果想在不同的程序中使用这样一个函数，则很可能必须重新设计它，使它不再依赖于全局变量。
全局变量使程序难以理解。由于全局变量可以通过程序中的任何语句进行修改，因此，要了解任何使用了全局变量的那一部分程序，则必须了解访问该全局变量的所有程序其他部分。

因此，最好不要使用全局变量来存储、操作和检索数据。相反，在大多数情况下，应该使用局部变量，并将其作为实参传递给需要访问它们的函数

**类和全局函数可以直接互相访问，前提是对方已声明**；

### 类的作用域

类类型（类或结构体）用作用域运算符访问，其它用成员访问运算符。

在类的外部 ， 成员的名字被隐藏起来了 。一旦遇到了类名 ，定义的剩余部分就在类的作用域之内了，这里的剩余部分包括参数列表和函数体 。结果就是， 我们可以直接使用类的其他成员而无须再次授权了 。

**返回值是类成员时也要额外用：：指定其作用域**.

### C++程序编译原理和man和exec

C++中的函数在编译时会根据它所在的命名空间、它所属的类、以及它的参数列表（也叫参数签名）等信息进行重新命名，形成一个新的函数名。这个新的函数名只有编译器知道，对用户是不可见的。对函数重命名的过程叫做名字编码（Name Mangling），是通过一种特殊的算法来实现的。

Name Mangling 的算法是可逆的，既可以通过现有函数名计算出新函数名，也可以通过新函数名逆向推演出原有函数名。Name Mangling 可以确保新函数名的唯一性，只要函数所在的命名空间、所属的类、包含的参数列表等有一个不同，最后产生的新函数名也不同。

可以只声明而不定义函数，这样调用函数时就会产生链接错误，从报错信息中就可以看到新函数名。

![a](https://img-blog.csdnimg.cn/20190329211614387.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxODI2MzY0NDEw,size_16,color_FFFFFF,t_70)

小括号中就是经 Name Mangling 产生的新函数名，它们都以?开始，以区别C语言中的_。

__cdecl，__thiscall是函数调用约定，也就是告诉编译器用于建栈，参数压栈以及获得返回值的规则。

成员变量：C++会将class中的成员变量提取出来放在栈区的一个同名的struct里面，与struct有相同的内存布局和字节对齐方式。

成员函数：将成员函数提取出来放在代码区，编译成员函数时要额外添加一个参数，把当前对象的指针传递进去，通过指针来访问成员变量。

静态成员函数：将静态成员函数放在全局静态区。

*成员函数最终被编译成与对象无关的全局函数*。C++规定，编译成员函数时要额外添加一个参数，把当前对象的指针传递进去，**通过指针来访问成员变量**。

```cpp
void Demo::display() {//编译前
    cout << a << endl;
    cout << b << endl;
}

void new_function_name(Demo * const p) {//编译后类似于这样
    //通过指针p来访问a、b
    cout << p->a << endl;
    cout << p->b << endl;
}
```

这样通过传递对象指针就完成了成员函数和成员变量的关联。这与我们从表明上看到的刚好相反，通过对象调用成员函数时，**不是通过对象找函数，而是通过函数找对象**。

编译器通过指针来访问成员变量，指针指向哪个对象就使用哪个对象的数据；编译器通过指针的类型来访问成员函数，指针属于哪个类的类型就使用哪个类的函数。

C++：man std::XX;

C:man 3 XX;

反汇编命令disas/disass/disassemble起始地址（函数名）[,结束地址]

-exec disas/main(m)

disass 0x4726e0，显示

```cpp
x  /<n/f/u> <addr>
```

n、f、u 都是可选的参数，其中，n 是一个正整数，表示显示内存的长度，也就是说从当前地址向后显示几个地址的内容；f 表示显示的格式；u 表示将多少个字节作为一个值取出来，如果不指定的话，GDB默认是4个bytes

参数 f 的可选值：
x 按十六进制格式显示变量。
d 按十进制格式显示变量。
u 按十六进制格式显示无符号整型。
o 按八进制格式显示变量。
t 按二进制格式显示变量。
a 按十六进制格式显示变量。
c 按字符格式显示变量。
f 按浮点数格式显示变量。
 
参数 u 的可选值：
b 表示单字节
h 表示双字节
w 表示四字节
g 表示八字节

### 内存四区

1，代码区

存放 CPU 执行的机器指令。通常代码区是可共享的（即另外的执行程序可以调用它），使其可共享的目的是对于频繁被执行的程序，只需要在内存中有一份代码即可。代码区通常是只读的，使其只读的原因是防止程序意外地修改了它的指令。另外，代码区还规划了局部变量的相关信息。

2，全局区

全局区中主要存放的数据有：**全局变量、静态变量、常量（如字符串常量）**

全局区的叫法有很多：全局区、静态区、数据区、全局静态区、静态全局区

这部分可以细分为data区和bss区
data区里主要存放的是已经初始化的全局变量、静态变量和常量。
bss区主要存放的是未初始化的全局变量、静态变量，这些未初始化的数据在程序执行前会自动被系统初始化为0或者NULL
常量区是全局区中划分的一个小区域，里面存放的是常量，如const修饰的全局变量、字符串常量等。

总结：全局区存放的是全局变量、静态变量和常量
3，栈区（stack）
栈是一种先进后出的内存结构，由编译器自动分配释放，存放函数的参数值、返回值、局部变量等。在程序运行过程中实时加载和释放，因此，**局部变量的生存周期为申请到释放该段栈空间。**

4，堆区（heap）

堆是一个大容器，它的容量要远远大于栈，但没有栈那样先进后出的顺序。用于动态内存分配。堆在内存中位于BSS区和栈区之间。**一般由程序员分配和释放，若程序员不释放，程序结束时由操作系统回收。**
总结

申请大小的限制：**栈是1或者2M，可以自己改，但是最大不超过8M**；堆，看主机是多少位的，**如果是32位，就是4G。**

申请效率：**栈由系统自动分配，速度较快**，程序员无法控制；堆是由new分配的内存，一般速度较慢，而且容易导致内存碎片，但是用起来方便！

)存储内容：栈，函数调用（返回值，各个参数，局部变量（**静态变量不入栈）**）；堆，一般在堆的头部用一个字节存放堆的大小，堆中的具体内容由程序员安排。

存取效率的比较：栈比堆快，Eg :char c[] = /"1234567890/";char *p =/"1234567890/";读取c[1]和p[1],c[1]读取时直接吧字符串中的元素读到寄存器cl中，而p[1]先把指针值读到edx中，再根据edx读取字符，多一次操作。

管理方式不同：栈，数据结构中的栈；**堆，链表**。

生长方向：**栈，高到低；堆，低到高**

**函数执行前只有代码区和全局区。栈区函数结束后释放，堆区用delete或free等释放，全局区（静态区）和代码区程序结束后释放。**

栈是机器系统提供的数据结构，计算机会在底层对栈提供支持，例如，分配专门的寄存器存放栈的地址，压栈出栈都有专门的执行指令，这就决定了栈的效率比较高。一般而言，只要栈的剩余空间大于所申请空间，系统就将为程序提供内存，否则将报异常提示栈溢出。

而堆则不同，它是由 C/C++ 函数库提供的，它的机制也相当复杂。例如，为了分配一块堆内存，首先应该知道**操作系统有一个记录空闲内存地址的链表，当系统收到程序的申请时，会遍历该链表，寻找第一个空间大于所申请空间的堆节点，然后将该节点从空闲节点链表中删除，并将该节点的空间分配给程序。而对于大多数系统，**会在这块内存空间的首地址处记录本次分配的大小（结构体）**，这样，代码中的 delete 语句才能正确释放本内存空间。另外，由于找到的堆节点的大小不一定正好等于申请的大小，系统会自动将多余的那部分重新放入空闲链表中。很显然，堆的分配效率比栈要低得多。

对栈而言，一般用于存放函数的参数与局部变量等。例如，在函数调用时，**第一个进栈的是（主函数中的）调用处的下一条指令（即函数调用语句的下一条可执行语句）的地址，然后是函数的各个参数，在大多数 C 编译器中，参数是由右往左入栈**的，最后是函数中的局部变量（注意 static 变量是不入栈的）。

```cpp
int main()
{
    int a = 1;
    int b = 2;
    printf("%d,%d",a, a=a+b );
}
```

### 构造函数及其初始化列表和对象数组

类中定义了五种特殊的成员函数来控制对象的拷贝、移动、赋值和销毁操作，包括拷贝构造函数、拷贝赋值运算符、移动构造函数、移动赋值运算符和析构函数，统称为**拷贝控制操作**。

**它的名字和类名相同，没有返回值，不需要用户显式调用（用户也不能调用），而是在创建对象时自动执行。这种特殊的成员函数就是构造函数（Constructor）**。

在栈上创建对象时，实参位于对象名后面，例如**Student stu("小明", 15, 92.5f)**；在堆上创建对象时，实参位于类名后面，例如**Student *pstu=new Student("李华", 16, 96)**。

不管是声明还是定义，函数名前面都不能出现返回值类型，即使是 void 也不允许；
函数体中不能有 return 语句。

构造函数的调用是强制性的，**一旦在类中定义了构造函数，那么创建对象时就一定要调用，不调用是错误的**。如果有多个重载的构造函数，那么创建对象时提供的实参必须和其中的一个构造函数匹配；反过来说，**创建对象时只有一个构造函数会被调用**。

如果用户自己没有定义构造函数，那么编译器会自动生成一个默认的构造函数，只是这个构造函数的**函数体是空的，也没有形参，也不执行任何操作**。比如上面的 Student 类，默认生成的构造函数如下：
**Student(){}**

一个类必须有构造函数，**要么用户自己定义，要么编译器自动生成**。一旦用户自己定义了构造函数，不管有几个，也不管形参如何(**可以重载构造函数从而选择初始化方式,例如定义一个无参一个有参**），编译器都不再自动生成.

Student stu()或Student stu，在堆上创建对象可以写作Student\*pstu = new Student()或Student \*pstu = new Student，它们都会调用构造函数 Student()。**创建对象时都没有写括号，其实是调用了默认的构造函数。**

```cpp
class Student{
private:
    char *m_name;
    int m_age;
    float m_score;
public:
    Student(char *name, int age, float score);
    void show();
};
//采用初始化列表
Student::Student(char *name, int age, float score): m_name(name), m_age(age), m_score(score){
    //TODO:
seq(new DataType[size]());//分配内存语句也可以
}
```

定义构造函数时并没有在函数体中对成员变量一一赋值，**其函数体为空（当然也可以有其他语句）**，而是**在函数首部与函数体之间添加了一个冒号:**，后面紧跟 **m_name(name), m_age(age), m_score(score)** 语句，这个语句的意思相当于函数体内部的m_name = name; m_age = age; m_score = score;语句，也是赋值的意思。

**同名也没有问题，但不直观，括号内的始终是传进来的参数**；

*特别的，如果要初始化的对象包含类类型，则如果不在初始化列表初始化，则会在函数体内初始化之前调用一次该类的默认构造函数，造成性能浪费，所以应一直使用初始化列表初始化成员*。

初始化列表可以用于全部成员变量，也可以只用于部分成员变量。**成员变量的初始化顺序与初始化列表中列出的变量的顺序无关，它只与成员变量在类中声明的顺序有关**.

**在类内定义和在类外定义构造函数一般是等价的**，在类内定义比较简洁。

class func{
public:
char m_A, m_B, m_C;
func(char C) : m_C(C), m_B(m_C) {m_A='A';}//在类外的话前面要加类名func::
}
func *p = new func('C');
B是乱码，初始化顺序是m_A,m_B,m_C;

模拟变长数组

```cpp
class VLA{
private:
    const int m_len;
    int *m_arr;
public:
    VLA(int len);
};
//必须使用初始化列表来初始化 m_len
VLA::VLA(int len): m_len(len){//！不能写成m_len=len写在函数体内
    m_arr = new int[len];
}
```

对象数组

```cpp
Student Stud[3]={ //定义对象数组
    Student(1001,18,87),  //调用第1个元素的构造函数，为它提供3个实参
    Student(1002,19,76),  //调用第2个元素的构造函数，为它提供3个实参
    Student(1003,18,72)  //调用第3个元素的构造函数，为它提供3个实参
};
等价于
Student *stud=new Student[3]{Student(1001,18,87),Student(1002,19,76),Student(1003,18,72)};
delete []stud;
```

### 自定义列表参数(initalizer_list)

必须保证参数的类型是一致的。

```cpp
vector(initializer_list<_Ty> _Ilist, const _Alloc& _Al = _Alloc())
        : _Mybase(_Al)
{   // construct from initializer_list, optional allocator
    Range_construct_or_tidy(_Ilist.begin(), _Ilist.end(), random_access_iterator_tag{});
}
template<typename _Tp>
    _GLIBCXX14_CONSTEXPR
    inline _Tp
    max(initializer_list<_Tp> __l)
    { return *std::max_element(__l.begin(), __l.end()); }

  template<typename _Tp, typename _Compare>
    _GLIBCXX14_CONSTEXPR
    inline _Tp
    max(initializer_list<_Tp> __l, _Compare __comp)
    { return *std::max_element(__l.begin(), __l.end(), __comp); }

  template<typename _Tp>
    _GLIBCXX14_CONSTEXPR
    inline pair<_Tp, _Tp>
    minmax(initializer_list<_Tp> __l)
    {
      pair<const _Tp*, const _Tp*> __p =
    std::minmax_element(__l.begin(), __l.end());
      return std::make_pair(*__p.first, *__p.second);
    }

```

这种类型是编译器自动构造的

```cpp
auto il = { 10, 20, 30 };  // the type of il is an initializer_list
```

提供的操作接口

![a](https://img-blog.csdnimg.cn/20191219094533668.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3hpYW5nYmFvaHVp,size_16,color_FFFFFF,t_70)

```cpp
initializer_list<T> lst; 
//默认初始化；T类型元素的空列表
initializer_list<T> lst{a,b,c...};
//lst的元素数量和初始值一样多；lst的元素是对应初始值的副本
lst2(lst)   
lst2=lst  
//拷贝或赋值一个initializer_list对象不会拷贝列表中的元素；拷贝后，原始列表和副本元素共享
lst.size()  //列表中的元素数量
lst.begin()  //返回指向lst中首元素的指针
lst.end()   //返回指向lst中尾元素下一位置的指针

```

**可以用迭代器遍历,可以用在函数特别是构造函数上，使它们能用初始化列表传参**。

```cpp
void error_msg(initializer_list<string> il)
{
   for(auto beg=il.begin();beg!=il.end();++beg)
      cout<<*beg<<" ";
   cout<<endl;
}

void msg(initializer_list<const char*> li)
{
        for (auto s: li)
                cout << s << endl;
}
int main(int argc, char* argv[])
{
        msg({"hello", "world", "message"});
        return 0;
```

### 复制构造函数

复制构造函数是构造函数的一种，也称拷贝构造函数，它**只有一个参数，参数类型是本类的引用**。

复制构造函数的参数可以是 const 引用，也可以是非 const 引用。 **一般使用前者，这样既能以常量对象（初始化后值不能改变的对象）作为参数，也能以非常量对象作为参数去初始化其他对象**。一个类中写两个复制构造函数，一个的参数是 const 引用，另一个的参数是非 const 引用，也是可以的。

如果类的设计者不写复制构造函数，编译器就会自动生成复制构造函数。大多数情况下，其作用是实现从源对象到目标对象逐个字节的复制，即使得目标对象的每个成员变量都变得和源对象相等（**浅拷贝**）。编译器自动生成的复制构造函数称为“默认复制构造函数”。

```cpp
#include<iostream >
using namespace std;
class Complex
{
public:
    double real, imag;
    Complex(double r, double i) {
        real= r; imag = i;
    }
};
int main(){
    Complex cl(1, 2);
    Complex c2 (cl);  //用复制构造函数初始化c2
    cout<<c2.real<<","<<c2.imag;  //输出 1,2
    return 0;
}
```

第 13 行给出了初始化 c2 的参数，即 c1。只有编译器自动生成的那个默认复制构造函数的参数才能和 c1 匹配，因此，c2 就是以 c1 为参数，调用默认复制构造函数进行初始化的。初始化的结果是 c2 成为 c1 的复制品，即 c2 和 c1 每个成员变量的值都相等。

如果编写了复制构造函数，则默认复制构造函数就不存在了.

如果只做复制工作，那么使用编译器自动生成的默认复制构造函数就行了.需要其它功能时再自己编写。

**构造函数不能以本类的对象作为唯一参数，以免和复制构造函数相混淆**。例如，不能写如下构造函数：
Complex (Complex c) {...}

**默认构造函数（即无参构造函数）不一定存在，但是复制构造函数总是会存在。**

1) 当用一个对象去初始化同类的另一个对象时，会引发复制构造函数被调用。例如，下面的两条语句都会引发复制构造函数的调用，用以初始化 c2。
   Complex c2(c1);
   Complex c2 = c1;
   这两条语句是等价的。
   注意，第二条语句是**初始化语句**，不是赋值语句。赋值语句的等号左边是一个早已有定义的变量，**赋值语句不会引发复制构造函数的调用。**
   Complex c1, c2; c1 = c2 ;c1=c2;
   这条语句不会引发复制构造函数的调用，因为 c1 早已生成，已经初始化过了。
2) 如果函数 F 的参数含有类 A 的对象，那么当 F 被调用时，类 A 的复制构造函数将被调用。换句话说，作为形参的对象，是用复制构造函数初始化的，而且调用复制构造函数时的参数，就是调用函数时所给的实参。

   ```cpp

   class A{
   public:
       A(){};//防止初始化时将复制构造函数当作构造函数而报错。
       A(A & a){
           cout<<"Copy constructor called"<<endl;
       }
   };
   void Func(A a,int b){ cout<<b<<endl;}
   int main(){
       A a;
       Func(a,1);
       return 0;
   }
   Copy constructor called
   1
   ```

   函数的形参的值等于函数调用时对应的实参，现在可以知道这不一定是正确的。**如果形参是一个对象，那么形参的值是否等于实参，取决于该对象所属的类的复制构造函数是如何实现的**。例如上面的例子，Func 函数的形参 a 的值在进入函数时是随机的，未必等于实参，因为复制构造函数没有做复制的工作。

   以对象作为函数的形参，在函数被调用时，生成的形参要用复制构造函数初始化，这会带来时间上的开销。如果用对象的引用而不是对象作为形参，就没有这个问题了。**但是以引用作为形参有一定的风险，因为这种情况下如果形参的值发生改变，实参的值也会跟着改变。**

   **如果要确保实参的值不会改变，又希望避免复制构造函数带来的开销，解决办法就是将形参声明为对象的 const 引用。**
   以const Complex & c形式作为函数形参；不可改变c的成员的值
3) 如果函数的返冋值是类 A 的对象，则函数返冋时，类 A 的复制构造函数被调用。换言之，作为函数返回值的对象是用**复制构造函数初始化** 的，而调用复制构造函数时的实参，就是 return 语句所返回的对象。

### 析构函数

析构函数（Destructor）也是一种特殊的成员函数，没有返回值，不需要程序员显式调用（程序员也没法显式调用），**而是在销毁对象时自动执行**。构造函数的名字和类名相同，而析构函数的名字是在类名前面加一个~符号。

**析构函数是对撤销对象占用的内存之前完成的一些清理工作，而不是删除对象。**

析构函数销毁类类型时执行它们自己的析构函数，内置类型（没有析构函数，包括指针）什么也不做，智能指针是类类型，会被销毁

析构函数没有参数，不能被重载，因此一个类只能有一个析构函数。

如果没有自行定义析构函数，编译器**会自动添加析构函数的声明。注意是声明而不是定义**。只有满足ODR(One Definition Rule)原则的情况下才会自动产生空体的析构函数定义。 如果一个class，程序员没有定义也没有声明它的默认构造函数时，编译器只会添加它的声明，而不是定义。除非有成员变量也是类对象，并且这个对象所属类有明确定义的构造函数；或者当前这个类的父类有明确的构造函数；这两种情况下编译器才为之产生默认构造函数的定义，一般情况下默认的空的析构函数就满足需求了，**自定义的析构函数一般用来输出内容或执行必需的手动销毁**。

隐式销毁一个内置指针成员并不会销毁它指向的内存，所以需要手动销毁。

析构函数体自身并不直接销毁成员，**成员是在析构函数体执行完之后隐含的析构阶段被销毁的**，所以自定义只有输出的析构函数并不影响析构过程

C++ 中的 new 和 delete 分别用来分配和释放内存，它们与C语言中 malloc()、free() 最大的一个不同之处在于：**用 new 分配内存时会调用构造函数，用 delete 释放内存时会调用析构函数。构造函数和析构函数对于类来说是不可或缺的**.

在**所有函数之外创建的对象是全局对象**，它和全局变量类似，**位于内存分区中的全局数据区，程序在结束执行时会调用这些对象的析构函数**。

在**函数内部创建的对象是局部对象**，它和局部变量类似，**位于栈区，函数执行结束时会调用这些对象的析构函数。**

**new 创建的对象位于堆区，通过 delete 删除时才会调用析构函数**；如果没有 delete，析构函数就不会被执行。

```cpp
#include <iostream>
#include <string>
using namespace std;
class Demo{
public:
    Demo(string s);
    ~Demo();
private:
    string m_s;
};
Demo::Demo(string s): m_s(s){ }
Demo::~Demo(){ cout<<m_s<<endl; }
void func(){
    //局部对象
    Demo obj1("1");
}
//全局对象
Demo obj2("2");
int main(){
    //局部对象
    Demo obj3("3");
    //new创建的对象
    Demo *pobj4 = new Demo("4");
    func();
    cout<<"main"<<endl;
  
    return 0;
}
运行结果：
1
main
3
2
```

可以看出对象销毁的次序。

1、调用父类的构造过程；
2、调用成员变量的构造函数（调用顺序与声明顺序相同）；
3、调用类自身的构造函数
**析构函数与对应构造函数的调用顺序相反**。

类似于入栈与出栈的顺序，最后构造的对象被最先析构。

非静态成员变量并不能决定自身的存储空间位置。**决定存储位置的是对象的创建方式**。

### this指针

this 是 C++ 中的一个**关键字**，也是一个 **const 指针(className *const this)**，它指向当前对象，通过**它可以访问当前对象的所有成员。**

所谓当前对象，是指正在使用的对象。例如对于stu.show();，stu 就是当前对象，this 就指向 stu。

this **只能用在类的内部**，通过 this **可以访问类的所有成员**，包括 private、protected、public 属性的。

以成员函数setname(char *name)为例，它的形参是name，和成员变量name重名，如果写作name = name;这样的语句，就是给形参name赋值，而不是给成员变量name赋值。而写作this -> name = name;后，=左边的name就是成员变量，右边的name就是形参，一目了然。**用this就不用刻意避免重名了,同样的，标识符不冲突也就不用用this指定了**

this 是 const 指针，它的值是不能被修改的，一切企图修改该指针的操作，如赋值、递增、递减等都是不允许的。
**this 只能在成员函数（声明在类体内，定义在类体外时要使用范围解析运算符::）内部使用，用在其他地方没有意义，也是非法的。**
**只有当对象被创建后 this 才有意义，因此*不能在 static 成员函数*中使用。**

this 实际上是成员函数的一个形参，在调用成员函数时将对象的地址作为实参传递给 this。不过 this 这个形参是隐式的，它并不出现在代码中，而是在编译阶段由编译器默默地将它添加到参数列表中。

this 作为*隐式形参*，**本质上是成员函数的局部变量，所以只能用在成员函数的内部，并且只有在通过对象调用成员函数时才给 this 赋值。**

成员函数最终被编译成与对象无关的普通函数，**除了成员变量，会丢失所有信息**，所以编译时要在成员函数中添加一个额外的参数，把当前对象的首地址传入，以此来关联成员函数和成员变量。这个额外的参数，实际上就是 this，**它是成员函数和成员变量关联的桥梁**。

*this==&Obj*.

### static关键字以及静态成员变量和静态成员函数

>static的第一种含义：修饰全局变量时，表明一个全局变量只对定义在同一文件中的函数可见。
>static的第二种含义：修饰局部变量时，表明该变量的值不会因为函数终止而丢失。
>static的第三种含义：修饰函数时，表明该函数只在同一文件中调用。
>static的第四种含义：修饰类的数据成员，表明对该类所有对象这个数据成员都只有一个实例。即该实例归 所有>对象共有。
>static的第五种含义：修饰类成员函数。

在C++中，我们可以**使用静态成员变量来实现多个对象共享数据的目标**。静态成员变量是一种特殊的成员变量，它被关键字static修饰。

static 成员变量属于类，不属于某个具体的对象，即使创建多个对象，也只为 m_total 分配一份内存，所有对象使用的都是这份内存中的数据。**当某个对象修改了 m_total，也会影响到其他对象**。

static 成员变量必须在类声明的外部初始化，具体形式为：
**type class::name = value;**

type 是变量的类型，class 是类名，name 是变量名，value 是初始值。将上面的 m_total 初始化：
int Student::m_total = 0;

type类似于函数的返回值

静态成员变量在**初始化时不能再加 static**，但必须要有数据类型。**被 private、protected、public 修饰的静态成员变量都可以用这种方式初始化**。

注意：static 成员变量的内存既不是在声明类时分配，也不是在创建对象时分配，而是在（类外）初始化时分配。反过来说，**没有在类外初始化的 static 成员变量不能使用。**

static 成员变量既可以通过对象来访问，也**可以通过类来访问**。非静态函数一般都要this指针，需要**实体调用**。

**static 成员函数不能加类型限定符如 const**。

 不能用const的原因：
     这是C++的规则，const修饰符用于表示函数不能修改成员变量的值，该函数必须是含有this指针的类成员函数，函数调用方式为thiscall，而类中的static函数本质上是全局函数，调用规约是__cdecl或__stdcall,不能用const来修饰它。一个静态成员函数访问的值是其参数、静态数据成员和全局变量，而这些数据都不是对象状态的一部分。而对成员函数中使用关键字const是表明：函数不会修改该函数访问的目标对象的数据成员。既然一个静态成员函数根本不访问非静态数据成员，那么就没必要使用const了。

类的静态成员函数没有 this 指针，这导致：

1、不能直接存取类的非静态成员变量，调用非静态成员函数.
2、不能被声明为 virtual。

```cpp
//通过类类访问 static 成员变量
Student::m_total = 10;
//通过对象来访问 static 成员变量
Student stu("小明", 15, 92.5f);
stu.m_total = 20;
//通过对象指针来访问 static 成员变量
Student *pstu = new Student("李华", 16, 96);
pstu -> m_total = 20;
```

static 成员变量**不占用对象的内存，而是在所有对象之外开辟内存**，**即使不创建对象也可以访问**,具体来说，static 成员变量和普通的 static 变量类似，都在内存分区中的全局数据区分配内存,初始化时可以赋初值，也可以不赋值。如果不赋值，那么会被**默认初始化为 0**。

编译器在编译一个普通成员函数时，会隐式地增加一个形参 this，并把当前对象的地址赋值给 this，所以普通成员函数只能在创建对象后通过对象来调用，因为它需要当前对象的地址。而**静态成员函数可以通过类来直接调用，编译器不会为它增加形参 this，它不需要当前对象的地址，所以不管有没有创建对象，都可以调用静态成员函数。**

**一个静态成员函数访问的值是其参数、静态数据成员和全局变量**.

和静态成员变量类似，静态成员函数在声明时要加 static，在定义时不能加 static（与非静态函数一样）。**静态成员函数可以通过类来调用**（一般都是这样做），也可以通过对象来调用.

不传参访问非静态变量

```cpp
class A
{
public:
    A()
    {
        m_gA = this;
        m_a = 999;
    }
    static void test()
    {
        m_gA->m_a += 1;
    }
    void hello()
    {
    }
private:
    static int m_staticA;
    static A *m_gA;
    int m_a;
};

```

### const成员变量和成员函数（常成员函数）

const 成员变量的用法和普通 const 变量的用法相似，只需要在声明时加上 const 关键字。初始化 const 成员变量只有一种方法，**就是通过构造函数的初始化列表.**

C++11以后可以在类内初始化。

**初始化还是和构造函数绑定**，只是记法不同，更方便。如果未调用构造函数，则不会初始化这些值。
如果调用构造函数，则使用类内初始化（如果存在）来初始化这些值，或者构造函数可以使用自己的初始化覆盖它。初始化的路径本质上是一样的，就是通过构造函数

const 成员函数**可以使用类中的所有成员变量，但是不能修改它们的值，** 这种措施主要还是为了**保护数据**而设置的。const 成员函数也称为**常成员函数**。

我们通常将 get 函数设置为常成员函数。读取成员变量的函数的名字通常以get开头，后跟成员变量的名字，所以通常将它们称为 get 函数。

常成员函数需要在声明和定义的时候**在函数头部的结尾加上 const 关键字，注意在*参数列表之后***

```cpp
class Student{
public:
    Student(char *name, int age, float score);
    void show();
    //声明常成员函数
    char *getname() const;
    int getage() const;
    float getscore() const;
private:
    char *m_name;
    int m_age;
    float m_score;
};
Student::Student(char *name, int age, float score): m_name(name), m_age(age), m_score(score){ }
void Student::show(){
    cout<<m_name<<"的年龄是"<<m_age<<"，成绩是"<<m_score<<endl;
}
//定义常成员函数
char * Student::getname() const{
    return m_name;
}
int Student::getage() const{
    return m_age;
}
float Student::getscore() const{
    return m_score;
}
```

需要强调的是，必须在成员函数的声明和定义处同时加上 const 关键字。char \*getname() const和char \*getname()是两个不同的函数原型，如果只在一个地方加 const 会导致声明和定义处的函数原型冲突。

**函数开头的 const 用来修饰函数的返回值**，表示返回值是 const 类型，也就是不能被修改，例如const char \* getname()。

**函数头部的结尾加上 const 表示常成员函数**，这种函数只能读取成员变量的值，而不能修改成员变量的值，例如char \* getname() const。

**const函数可以修改被mutable修饰的变量**，可以用来计数const函数被调用的次数(可以赋初值)。

**对于不需要修改对象成员变量的成员函数，应该将其声明和定义为常成员函数(返回成员变量或者输出函数)**，因为这种情况下向某个**需要读取对象**的函数传递参数时一般用常引用形式(不用复制，并确保不会被修改)，在该函数中调用非常成员函数是不允许的,**const 对象不能访问非const成员**。

const引用传参：

1.**对于非内部数据类型的输入参数（复制代价大），应该将“值传递”的方式改为“const 引用传递”**，目的是提高效率。例如将void func(A a) 改为void func(const A &a)。一个额外的好处是这样**可以接收右值**，例如临时对象。

2.**对于内部数据类型的输入参数（复制代价小），不要将“值传递”的方式改为“const 引用传递”**。否则既达不到提高效率的目的，又降低了函数的可理解性。例如void func(int x) 不应该改为void func(const int &x)。

**参数对象(传参进入的本类对象)不能调用非const的成员函数，因为this指针是const的**.

### const和static成员函数都可以通过参数访问私有变量，限制只是局限于它们的默认调用

### 从枚举到枚举类

枚举有如下问题：

- 作用域不受限,会容易引起命名冲突。例如下面无法编译通过的：

```cpp
#include <iostream>
using namespace std;

enum Color {RED,BLUE};
enum Feeling {EXCITED,BLUE};

int main() 
{
    return 0;
}
```

- 会隐式转换为int
- 用来表征枚举变量的实际类型不能明确指定，从而无法支持枚举类型的前向声明。(**C++的枚举可以指定类型**)

解决第一个问题的经典做法

```cpp
namespace Color //1
{
    enum Type
    {
        RED=15,
        YELLOW,
        BLUE
    };
};
struct Color1//2
{
    enum Type
    {
        RED=102,
        YELLOW,
        BLUE
    };
};
```

枚举类

```cpp
enum class Color3:char;  // 前向声明

// 定义
enum class Color3:char 
{
    RED='r',
    BLUE
};
char c3 = static_cast<char>(Color3::RED);//必须转换，并且不同枚举类的变量它们属于不同的类型，无法直接比较
```

### C++成员对象和封闭类

一个类的成员变量如果是另一个类的对象，就称之为“成员对象”。包含成员对象的类叫封闭类（enclosed class）。

```cpp
类名::构造函数名(参数表): 成员变量1(参数表), 成员变量2(参数表), ...
{
...
}
```

。对于成员对象，初始化列表的“参数表”中存放的是构造函数的参数（它指明了该成员对象如何初始化）。对于基本类型成员变量，“参数表”中就是一个初始值。

```cpp
#include <iostream>
using namespace std;
class CTyre  //轮胎类
{
private:
    int radius;  //半径
    int width;  //宽度
public:
    CTyre(int r, int w) : radius(r), width(w) { }
};
class CEngine  //引擎类
{
};
class CCar {  //汽车类
private:
    int price;  //价格
    CTyre tyre;
    CEngine engine;
public:
    CCar(int p, int tr, int tw);
};
CCar::CCar(int p, int tr, int tw) : price(p), tyre(tr, tw)//！关键
{
};
int main()
{
    CCar car(20000, 17, 225);
    return 0;
}
```

没有说明 engine 该如何处理。在这种情况下，编译器就认为 engine 应该用 CEngine 类的无参构造函数初始化。而 CEngine 类确实有一个编译器自动生成的默认无参构造函数，因此，整个 car 对象的初始化问题就都解决了。

封闭类对象生成时，先执行所有成员对象的构造函数，然后才执行封闭类自己的构造函数。**成员对象构造函数的执行次序和成员对象在类定义中的次序一致，与它们在构造函数初始化列表中出现的次序无关。**

对象消亡时也遵循析构函数的一般规律

```cpp
#include<iostream>
using namespace std;
class CTyre {
public:
    CTyre() { cout << "CTyre constructor" << endl; }
    ~CTyre() { cout << "CTyre destructor" << endl; }
};
class CEngine {
public:
    CEngine() { cout << "CEngine constructor" << endl; }
    ~CEngine() { cout << "CEngine destructor" << endl; }
};
class CCar {
private:
    CEngine engine;
    CTyre tyre;
public:
    CCar() { cout << "CCar constructor" << endl; }
    ~CCar() { cout << "CCar destructor" << endl; }
};
int main() {
    CCar car;
    return 0;
}
CEngine constructor
CTyre constructor
CCar constructor
CCar destructor
CTyre destructor
CEngine destructor

```

```cpp
#include <iostream>
using namespace std;
class A
{
public:
    A() { cout << "default" << endl; }
    A(A &a) { cout << "copy" << endl; }
};
class B
{
    A a;
};
int main()
{
    B b1, b2(b1);
    return 0;
}
程序的输出结果是：
default
copy
```

说明 b2.a 是用类 A 的复制构造函数初始化的，而且调用复制构造函数时的实参就是 b1.a。

**默认构造b1->无参构造b1.a->默认复制构造b2->调用A的复制构造函数**，（普通变量直接拷贝过去即可）

**嵌套类或结构体用::访问**.

### 友元函数和友元类

借助友元（friend），可以使得其他类中的成员函数以及全局范围内的函数访问当前类的 private 成员。

在当前类以外定义的、不属于当前类的函数也可以在类中声明，但要在前面加 friend 关键字，这样就构成了友元函数。**友元函数可以是不属于任何类的非成员函数，也可以是其他类的成员函数。**

友元函数可以访问当前类中的**所有成员**，包括 public、protected、private 属性的。

友元函数不同于类的成员函数，在友元函数中**不能直接访问类的成员，必须要借助对象**。

成员函数在调用时会隐式地增加 this 指针，指向调用它的对象，从而使用该对象的成员；而 show() 是非成员函数，没有 this 指针，编译器不知道使用哪个对象的成员，要想明确这一点，就**必须通过参数传递对象（可以直接传递对象，也可以传递对象指针或对象引用），并在访问成员时指明对象**。

friend void Student::show(Address *addr);

**需要提前声明函数，再宣布它是另一个类的朋友**。

```cpp
class Address;  //前向声明Address类。
//声明Student类
class Student{
public:
Student(char *name, int age, float score);
public:
void show(Address *addr);//要提前声明类形参
private:
char *m_name;
int m_age;
float m_score;
};
//定义Address类
class Address{
private:
char *m_province;  //省份
char *m_city;  //城市
char *m_district;  //区（市区）
public:
Address(char *province, char *city, char *district);//最后定义函数
//将Student类中的成员函数show()声明为友元函数，函数要先声明
friend void Student::show(Address *addr);
};
```

顺序大概是，**提前声明A类**，在B类定义中声明将要作为A类友元函数的函数（**形参必须有A类**），正式定义A类，并声明友元函数。

因为创建对象时要为对象分配内存，在正式声明类之前，编译器无法确定应该为对象分配多大的内存。编译器只有在“见到”类的正式声明后（其实是见到成员变量），才能确定应该为对象预留多大的内存。在对一个类作了提前声明(**前向声明**)（**类名出现**）后，可以用该类的名字去定义指向该类型对象的**指针变量**（所以类和结构体可以定义**指向自身的指针**）（本例就定义了 Address 类的指针变量）或**引用变量**,都能直接访问另一个类的成员，一般用**引用，省空间**，因为指针变量和引用变量本身的**大小是固定的**，与它所指向的数据的大小无关。

前向声明得到**不完全类型**，只能在非常有限的情景下使用：可以定义指向这种类型的指针和或引用，也可以声明（但不是定义）以不完全类型作为参数或者返回类型的函数。

**友元声明的的作用是影响访问权限，而非一般意义上的声明**.

**类和非成员函数的声明不是必须在友元声明之前**.

在创建类的对象之前，必须完整地定义该类。必须定义类，而不只是声明类，这样，编译器就会给类的对象预定相应的存储空间。同样地，在使用引用或指针访问类的成员之前，必须已经定义类。

不仅可以将一个函数声明为一个类的“朋友”，还可以将整个类声明为另一个类的“朋友”，这就是友元类。**友元类中的所有成员函数都是另外一个类的友元函数**。

例如将类 B 声明为类 A 的友元类，那么类 B 中的所有成员函数都是类 A 的友元函数，可以访问类 A 的所有成员，包括 public、protected、private 属性的。**破坏了面向对象的封装特性**。

关于友元，有两点需要说明：
友元的关系**是单向的而不是双向的**。如果声明了类 B 是类 A 的友元类，不等于类 A 是类 B 的友元类，类 A 中的成员函数不能访问类 B 中的 private 成员。**只能被朋友访问，不能访问朋友**
友元的关系**不能传递**。如果类 B 是类 A 的友元类，类 C 是类 B 的友元类，不等于类 C 是类 A 的友元类。

```cpp
#include <iostream>
using namespace std;
class Address;  //提前声明Address类
//声明Student类
class Student{
public:
    Student(char *name, int age, float score);
public:
    void show(Address &addr);
private:
    char *m_name;
    int m_age;
    float m_score;
};
//声明Address类
class Address{
public:
    Address(char *province, char *city, char *district);
public:
    //将Student类声明为Address类的友元类
    friend class Student;
private:
    char *m_province;  //省份
    char *m_city;  //城市
    char *m_district;  //区（市区）
};
//实现Student类
Student::Student(char *name, int age, float score): m_name(name), m_age(age), m_score(score){ }
void Student::show(Address &addr){
    cout<<m_name<<"的年龄是 "<<m_age<<"，成绩是 "<<m_score<<endl;
    cout<<"家庭住址："<<addr->m_province<<"省"<<addr->m_city<<"市"<<addr->m_district<<"区"<<endl;
}
//实现Address类
Address::Address(char *province, char *city, char *district){
    m_province = province;
    m_city = city;
    m_district = district;
}
int main(){
    Student stu("小明", 16, 95.5f);
    Address addr("陕西", "西安", "雁塔");
    stu.show(&addr);
   
    Student *pstu = new Student("李磊", 16, 80.5);
    Address *paddr = new Address("河北", "衡水", "桃城");
    pstu -> show(paddr);
    return 0;
}
```

### 结构体和对象的异同

同：

1，定义和使用非常相似，例子如下：
public struct Student
{
string Name;
int Age;
}
public class Question
{
int Number;
string Content;
}
使用：
Student s=new Student();
Question q=new Question();
2，两者都是container类型，这表示它们可以包含其他数据类型作为成员。

3，两者都拥有成员，包括：构造函数、方法、属性、字段、常量、枚举类型、事件、以及事件处理函数。

4，两者的成员都有其各自的存取范围。例如，可以将某一个成员声明为Public，而将另一个成员声明为Private。

5，两者都可以实现接口。

6，两者都可以公开一个默认属性，然而前提是这个属性至少要取得一个自变量。

7，两者都可以声明和触发事件，而且两者都可以声明委托（Delegate）。

异：

1，结构是**实值类型**（Value Types），而类则是**引用类型**（Reference Types）。

3，所有结构成员默认都是**Public**，而类的**变量和常量数**则默认位**Private**，不过**其他类成员默认都是Public**。

4，结构成员不能被声明位Protected，而类成员可以。

5，结构变量声明不能指定初始值、使用New关键字货对数组进行初始化，但是类变量声明可以。

6，结构**不能声明默认的构造函数，也就是不拥有参数的非共享构造函数**，但是类则无此限制。

7，二者都可以拥有共享构造函数，**结构的共享构造函数不能带有参数**，但是类的共享构造函数则可以带或者不带参数。

8，**结构不允许声明析构函数**（Destructor），类则无此限制。

9，结构的实例（Instance）声明，**不允许对包含的变量进行初始化设定**，类则可以在声明类的实例时，同时进行变量初始化。

10，结构是隐式继承自ValueType类，而且不能继承任何其他类型，类则可以继续自ValueType以外的任何类。

11，结构是无法被继承的，类则可以。

12，结构永远不会终止，因此CLR不会在任何结构上调用Finalize方法。类则是由内存回收进程加以终止，当内存回收进程检测到没有任何作用的类时，它就会调用类的Finalize方法。

13，结构不需要构造函数，类则需要构造函数。

14，结构只能在一种情况下使用非共享构造函数，那就是非共享构造函数会接受参数。但是类则无此限制，它可以使用带参数或不带参数的非共享构造函数。

14，每一个结构都具有无参数的隐含公共构造函数，此构造函数会将结构的所有成员初始化为其默认值。不需要重新定义这个行为。

在“实例和变量”层面上，由于结构是数值类型的，因此每一个结构变量会永远的绑定到结构实例上。然而类是引用类型的，而且对象变量可引用不同的类实例，在此方面的区别，会对使用将结构和类造成如下的影响：

15，**结构变量会隐式的使用结构的无参数构造函数来初始化成员，这就意味语句 Struct S = new Struct（）**。

16，当您将一个结构变量赋值给另一个，或者将结构实例传递到程序变量时，**所有变量成员的值会复制到新的结构中(*浅拷贝*）**。当您将一个对象变量赋值给另一个，或者将对象变量传递给程序时，则**只是复制指针**。

17，您可以将Null值赋值给结构变量，但是该实例会一直与该变量保持关联。虽然变量成员会因此赋值而重新初始化，但是您还是可以调用变量的方法并访问其数据成员。相反的，如果您将对象变量设定为Null，您就会中断它与任何类型实例的关联，而且除非您再将另一个实例赋值给它，否则无法通过变量访问任何成员。

18，您可以在不同时间将不同的类的实例赋值给同一个对象变量，而且在同一时间可有好几个对象变量引用相同的类实例，如果您对类成员值做了改变，则其他指向相同实例的对象变量也会发生改变。然而，结构成员则会封装在他们自己的实例中，变更结构成员值并不会对其他任何结构变量的成员造成影响，甚至也不会影响相同结构声明的其他实例。

19，两个结构必须以成员对成员的比较方式来执行相等比较。两个对象变量可以使用Equals方法来加以比较。**Equals会判断两个变量是否指向相同的实例**

**总的来说，struct 更适合看成是一个数据结构的实现体，class 更适合看成是一个对象的实现体**。

### 位域和union

- 位域在内存中的布局是与机器有关的
- 位域的类型必须是整型或枚举类型，带符号类型中的位域的行为将因具体实现而定
- 取地址运算符（&）不能作用于位域，任何指针都无法指向类的位域
- 类和对象都支持

```cpp
struct bit_field_name
{
    type member_name : width;
};
```

| Elements       | Description                                                   |
| -------------- | ------------------------------------------------------------- |
| bit_field_name | 位域结构名                                                    |
| type           | 位域成员的类型，必须为 int、signed int 或者 unsigned int 类型 |
| member_name    | 位域成员名                                                    |
| width          | 规定成员所占的位数                                            |

值时要注意值的大小不能超过位域成员的容量，2bit最大存储3(11)

```cpp
struct box 
{
    unsigned int a: 1;
    unsigned int  : 3;
    unsigned int b: 4;
};
```

该位域结构体中间有一个未命名的位域，占据 3 Bits，仅起填充作用，并无实际意义。 填充使得该结构总共使用了 8 Bits.位域是以unsigned int的大小为基本单位的。

一个位域成员不允许跨越两个 unsigned int 的边界，如果成员声明的总位数超过了一个 unsigned int 的大小， 那么编辑器会自动移位位域成员。

也可以使用一个宽度为 0 的未命名位域成员令下一位域成员与下一个整数对齐。

```cpp
struct stuff 
{
    unsigned int field1: 30;
    unsigned int       : 2;
    unsigned int field2: 4;
    unsigned int       : 0;
    unsigned int field3: 3; 
};
```

这里 stuff.field1 与 stuff.field2 之间有一个 2 Bits 的空隙，stuff.field3 则存储在下一个 unsigned int 中，该结构现在大小为 3 * 32 = 96 Bits。

位域的重映射

```cpp
struct box {
    unsigned int ready:     2;
    unsigned int error:     2;
    unsigned int command:   4;
    unsigned int sector_no: 24;
}b1;
```

 利用重映射将位域归零

```cpp
int* p = (int *) &b1;  // 将 "位域结构体的地址" 映射至 "整形（int*) 的地址" 
*p = 0;                // 清除 s1，将各成员归零
```

利用联合 (union) 将 32 Bits 位域 重映射至 unsigned int 型

> “联合” 是一种特殊的类，也是一种构造类型的数据结构。在一个 “联合” 内可以定义多种不同的数据类型， 一个被说明为该 “联合” 类型的变量中，允许装入该 “联合” 所定义的任何一种数据，这些数据共享同一段内存，以达到节省空间的目的
>
> “联合” 与 “结构” 有一些相似之处。但两者有本质上的不同。在结构中各成员有各自的内存空间， 一个结构变量的总长度是各成员长度之和（空结构除外，同时不考虑边界调整）。而在 “联合” 中，各成员共享一段内存空间， 一个联合变量的长度等于各成员中最长的长度。应该说明的是， 这里所谓的共享不是指把多个成员同时装入一个联合变量内， 而是指该联合变量可被赋予任一成员值，但每次只能赋一种值， 赋入新值则冲去旧值。
> union的特点：
>> 默认访问控制符为 public
>> 可以含有构造函数、析构函数
>> 不能含有引用类型的成员
>> 不能继承自其他类，不能作为基类
>> 不能含有虚函数
>> 匿名 union 在定义所在作用域可直接访问 union 成员
>> 匿名 union 不能包含 protected 成员或 private 成员
>> 全局匿名联合必须是静态（static）的

我们可以声明以下联合:

```cpp
union u_box {
  struct box st_box;     
  unsigned int ui_box;
};
```

x86 系统中 unsigned int 和 box 都为 32 Bits, 通过该联合使 st_box 和 ui_box 共享一块内存。具体位域中哪一位与 unsigned int 哪一位相对应，取决于编译器和硬件。
利用联合将位域归零，代码如下：

```cpp
union u_box u;
u.ui_box = 0;
```

## 重要关键字和部分C++11的特性

### default和delete

(1) defaulted 函数特性仅用于类的*特殊成员函数*，且该特殊成员函数没有默认参数;

(2) 既可以在类体里定义(inline),也可以在类体外(out-of-line)定义。

“=default”说明符到函数声明的末尾，以将该函数声明为显示默认构造函数。这就使得编译器为显示默认函数生成了默认实现，它**比手动编程函数更加有效**。

(1) 必须在函数第一次声明的时候将其声明为 deleted 函数

(2) 不同于default，*delete没有限制为特殊成员函数*才能使用delete

删除特殊成员函数提供了一种更简洁的方法来防止编译器生成我们不想要的特殊成员函数。（如“禁用拷贝构造函数”示例中所示）。
删除正常成员函数或非成员函数可防止有问题的类型导致调用非预期函数（如“禁用不需要的参数转换”示例中所示）。

### constexpr和const变量

为了解决 const 关键字的双重语义问题，保留了 const 表示“只读”的语义，而将“常量”的语义划分给了新添加的 constexpr 关键字。因此 C++11 标准中，建议将 const 和 constexpr 的功能区分开，**即凡是表达“只读”语义的场景都使用 const，表达“常量”语义的场景都使用 constexpr**。

constexpr 关键字则用于指明其后是一个常量（或者常量表达式），编译器在编译程序时可以顺带将其结果计算出来，而无需等到程序运行阶段，这样的优化极大地提高了程序的执行效率。所有计算都在编译时完成(The values are guaranteed to be available at compile time.)。像溢出这样错误也会在编译时被检出。

```cpp
class test {
    public:
static int si; // 静态成员变量
  const double x=0;
  //constexpr double y=0;//error,
    //static int si2 = 100; // error: 只有静态常量成员变量，才可以这样初始化
    static const int csi; // 静态常量成员变量
    static const int csi2 = 100; // 静态常量成员变量的初始化(Integral type) (1)
    static constexpr double csc= 100;//和上面的式子等价，都可以用来作为数组的大小。
    //较老的编译器可能不支持上述两种方式，可以借助共用体实现类内初始化常量。
      enum { n = 27, m = 51, p = -82 };
    static const double csd; // 静态常量成员变量(non-Integral type)
    //staticconst double csd2 = 99.9; // error: 只有静态常量整型数据成员才可以在类中初始化

}
```

### constexpr函数

constexpr函数指的是在编译的时候就能得到其返回值的函数，也就是说编译器将constexpr函数直接转换成其返回值，因此，constexpr函数都是被隐式地定义为内联函数。使用constexpr关键字来修饰constexpr函数。

- constexpr函数的返回值类型必须是字面值类型(i*i是，i不是)；

- constexpr函数的形参可以是非常量，但是实参必须是常量

- 函数体内只能有一条返回语句，初次之外只能有空语句和类型别名。

```cpp
constexpr int limit = mf + 1
constexpr double Abs(double x)
{
    return (x > 0.0 ? x : -x);
}
constexpr double Sqrt_impl(double y, double x1, double x2, double eps)
{
    return (Abs(x1 -x2) < eps ? x2 : Sqrt_impl(y, x2, (x2+y/x2)*0.5, eps));
}
 
constexpr double Sqrt(double y) 
{
    return Sqrt_impl(y, 0, y*0.5 + 1.0, 1e-10);
}
constexpr double SinCos_impl(double x2, double n, double u)
{
    return (Abs(u) < 1e-10 ? u : u + SinCos_impl(x2, n+2.0, -u*x2/(n * (n + 1))));
}
 
constexpr double Cos(double x);
 
constexpr double Sin(double x)
{
    return (Abs(x) < 0.5 ? SinCos_impl(x*x, 2.0, x) : 2 * Sin(x * 0.5) * Cos(x * 0.5));
}
 
constexpr double Sqr(double x)
{
    return x*x;
}
 
constexpr double Cos(double x)
{
    return (Abs(x) < 0.5 ? SinCos_impl(x*x, 1.0, 1.0) : Sqr(Cos(x * 0.5)) - Sqr(Sin(x * 0.5)));
}
```

### const和volatile

顶层表示本身是常量，底层表示所指的对象是常量。

```cpp
const int *p1;//底层const,允许改变变量本身，不允许改变指向的对象
int const *p2;//底层const
int * const p3;、//顶层const，不允许改变变量
const int &r=i;//声明引用的const变量都是底层const，r是底层，i是顶层
//执行拷贝操作时顶层const不受什么影响，底层const转换时必须保证有相同的底层const资格，例如两个底层const指针之间的赋值，以及将const引用变量作为函数参数时拷贝的实际形参(两者性质相同所以在函数中变量也会保持const)
//非常量可以转化为常量，反之不行
const int ci =0；
int &r=ci;//错误
const int &r=ci;
```

在最后一种情况下，指针是只读的，也就是 p3 本身的值不能被修改；在前面两种情况下，指针所指向的数据是只读的，也就是 p1、p2 本身的值可以修改（指向不同的数据），但它们指向的数据不能被修改。

当然，指针本身和它指向的数据都有可能是只读的，下面的两种写法能够做到这一点：

```cpp
const int * const p4;
int const * const p5;

修饰const后面的所有部分；

const  class  object(params);

class const object(params);

const 指针：
const class *p = new class(params);

class const *p = new class(params);

```

用指针可以修改const变量，但const全局变量存储在全局存储空间，而且是只读的，因此试图修改会出现段错误。一般的const变量只是在编译期的常量。它类似于一种承诺，但可以不遵守。

不建议修改const变量的值，即使修改也要熟悉当前使用的编译器对于该未定义行为 是如何解释的。(其实只有devc++不行，加了volatile还要多管闲事)

```cpp
const volatile int x=1;//volatile告诉编译器不要优化（C++中的常量折叠：指const变量（即常量）值放在编译器的符号表中，计算时编译器直接从表中取值，省去了访问内存的时间，从而达到了优化。）
  int *p=(int*)&x;//必须强制类型转换
  *p=10;//未定义行为(不规范)，慎用
  std::cout <<x<<std::endl;

```

一旦将对象定义为常对象之后，不管是哪种形式，**该对象就只能访问被 const 修饰的成员函数了，因为非 const 成员函数可能会修改对象的数据（编译器也会这样假设），可以访问没被const修饰的public变量，但不能修改**。

被 volatile 修饰的变量，在对其进行读写操作时，会引发一些可观测的副作用。而这些可观测的副作用，是由程序之外的因素决定的。

```cpp
int  *output = (unsigned  int *)0xff800000; //定义一个IO端口；  
int   init(void)  
{  
    int i;  
    for(i=0;i< 10;i++)
    {  
    *output = i;  
    }  
}
//会被优化为
int  init(void)  
{  
    *output = 9;  
}
static int i=0;

int main()
{
    while(1)
    {
    if(i) dosomething();
    }
}
//会被优化为
/* Interrupt service routine */
void IRS()
{
    i=1;
}
//如果将变量i加上volatile修饰，则编译器保证对变量i的读写操作都不会被优化，从而保证了变量i被外部程序更改后能及时在原程序中得到感知。

/*多线程应用中被多个任务共享的变量。 当多个线程共享某一个变量时，该变量的值会被某一个线程更改，应该用 volatile 声明。作用是防止编译器优化把变量从内存装入CPU寄存器中，当一个线程更改变量后，未及时同步到其它线程中导致程序出错。volatile的意思是让编译器每次操作该变量时一定要从内存中真正取出，而不是使用已经存在寄存器中的值。*/
```

### \#define,using和typedef以及条件表达式的一些补充

[详见](https://www.cnblogs.com/kevinWu7/p/10163447.html)

[宏用法](https://blog.csdn.net/yasi_xi/article/details/19483197)

```cpp
#define add(x,y) (x+y)   //此处要打括号，不然执行2*add(x,y) 会变成 2*x + y
int main()
{
    std::cout << add(9,12) << std::endl;//输出21
    return 0;
}
//多行定义
#define MACRO(arg1, arg2) do { \
/* declarations */ \
stmt1; \
stmt2; \
/* ... */ \
} while(0) /* (no trailing ; ) */

#define func(x)              \
    {                          \
              语句1;语句2; 
    }
#undef func //*不是func()
//代码块
用{}定义的宏的问题在于在if else语句中会多拓展出一个分号(只有一个if时不会)，可以用do while(0)解决

它的作用有

（1）空的宏定义避免warning:
　　#define foo() do{}while(0)
　　（2）存在一个独立的block，可以用来进行变量定义，进行比较复杂的实现。
　　（3）如果出现在判断语句过后的宏，这样可以保证作为一个整体来是实现：
　　　　  #define foo(x) \
　　　　　　　 action1(); \
　　　　　　 　action2();
　　　　在以下情况下：
　　　　if(NULL == pPointer)
 　　　　　　  foo();
　　　　就会出现action1和action2不会同时被执行的情况，而这显然不是程序设计的目的。
　　（4）以上的第3种情况用单独的{}也可以实现，但是为什么一定要一个do{}while(0)呢，看以下代码：
　　　　　　#define switch(x,y) {int tmp; tmp="x";x=y;y=tmp;}
　　　　　　if(x>y)
　　　　　　　　switch(x,y);
　　　　　　else       //error, parse error before else
　　　　　　otheraction();
　　　　在把宏引入代码中，会多出一个分号，从而会报错。这对这一点，可以将if和else语句用{}括起来，可以避免分号错误。

```

带返回值的宏定义

```cpp

一般用条件表达式

#define getHeight(x) ((x) ? (x)->height : 0)


//有时不能根据条件判断，例如首先要执行一个void返回值函数或返回值恒定
//这时可以用逗号表达式，从左到右计算每个式子的值（语句不能是void类型，例如控制语句和定义语句）， 整个表达式的值等于最后一个式子的值，优先级很低，需要用括号括起来,它也可以用于三元条件运算符，实现分支执行多条语句；

#define func(x)              \
    (                  
        int i，     \ //非法
              语句1,语句2 \
            //return 1//非法
            //break;//非法
        )

#define func(x)\
(\
    {\
    int i;\ //合法
        语句1；语句2;\
    return 1;//非法
    break;//合法；此时表达式类型为void
    }\
)\
//只有一个代码块成员的逗号表达式，表达式的值也是最后一个语句的值，不能返回值,
逗号表达式定义的可以当做普通意义上的函数，可以在if-else语句里作为独立语句或取它们的返回值(如果有)

在条件运算符中使用的演示(没有实际意义)
if (G.bridges[j].broken == false)
                select(2) ? (
                                {
                                    G.bridges[j].broken = true;
                                    continue;//使类型一致
                                })
                          : (
                                {
                                    G.players[i].outLocation = j;
                                    G.survialNumber--;
                                    break;//有控制语句所以要用({})
                                });
```

条件运算符的类型问题(**后面两个表达式的类型一致或可以类型转换到一致或存在throw语句时合法**)

>Conditional expressions group right-to-left. The first expression is implicitly converted to bool (clause 4). It is evaluated and if it is true, the result of the conditional expression is the value of the second expression, otherwise that of the third expression. All side effects of the first expression except for destruction of temporaries (12.2) happen before the second or third expression is evaluated. Only one of the second and third expressions is evaluated.
>If either the second or the third operand has type (possibly cv-qualified) void, then the lvalue-to-rvalue (4.1), array-to-pointer (4.2), and function-to-pointer (4.3) standard conversions are performed on the second and third operands, and one of the following shall hold:
>
>> - The second or the third operand (but not both) is a throw-expression (15.1); the result is of the type of the other and is an rvalue.
>> - Both the second and the third operands have type void; the result is of type void and is an rvalue.
>> - Note: this includes the case where both operands are throw-expressions. 
>
>Otherwise, if the second and third operand have different types, and either has (possibly cv-qualified) class type, an attempt is made to convert each of those operands to the type of the other. The process for determining whether an operand expression E1 of type T1 can be converted to match an operand expression E2 of type T2 is defined as follows:
>
>>3.a: If E2 is an lvalue: E1 can be converted to match E2 if E1 can be implicitly converted (clause 4) to the type “reference to T2”, subject to the constraint that in the conversion the reference must bind directly (8.5.3) to E1.
>>3.b: If E2 is an rvalue, or if the conversion above cannot be done:
>>
>> - e class of, the class of T1, and the cv-qualification of T2 is the same cv-qualification as, or a greater cvqualification than, the cv-qualification of T1. If the conversion is applied, E1 is changed to an rvalue of type T2 that still refers to the original source class object (or the appropriate subobject thereof). (Note: that is, no copy is made. )
>> - 3.b.2 : Otherwise (i.e., if E1 or E2 has a nonclass type, or if they both have class types but the underlying classes are not either the same or one a base class of the other): E1 can be converted to match E2 if E1 can be implicitly converted to the type that expression E2 would have if E2 were converted to an rvalue (or the type it has, if E2 is an rvalue).
>>
>
>Using this process, it is determined whether the second operand can be converted to match the third operand, and whether the third operand can be converted to match the second operand. If both can be converted, or one can be converted but the conversion is ambiguous, the program is ill-formed. If neither can be converted, the operands are left unchanged and further checking is performed as described below. If exactly one conversion is possible, that conversion is applied to the chosen operand and the converted operand is used in place of the original operand for the remainder of this section.
>If the second and third operands are lvalues and have the same type, the result is of that type and is an lvalue.
>Otherwise, the result is an rvalue. If the second and third operand do not have the same type, and either has (possibly cv-qualified) class type, overload resolution is used to determine the conversions (if any) to be applied to the operands (13.3.1.2, 13.6). If the overload resolution fails, the program is ill-formed. Otherwise, the conversions thus determined are applied, and the converted operands are used in place of the original operands for the remainder of this section.
>Lvalue-to-rvalue (4.1), array-to-pointer (4.2), and function-to-pointer (4.3) standard conversions are performed on the second and third operands. After those conversions, one of the following shall hold:
>
>>6.a: The second and third operands have the same type; the result is of that type.
>>6.b: The second and third operands have arithmetic or enumeration type; the usual arithmetic conversions are performed to bring them to a common type, and the result is of that type.
>>6.c: second and third operands have pointer type, or one has pointer type and the other is a null pointer constant; pointer conversions (4.10) and qualification conversions (4.4) are performed to bring them to their composite pointer type (5.9). The result is of the composite pointer type.
>>6.d: The second and third operands have pointer to member type, or one has pointer to member type and the other is a null pointer constant; pointer to member conversions (4.11) and qualification conversions (4.4) are performed to bring them to a common type, whose cv-qualification shall match the cvqualification of either the second or the third operand. The result is of the common type.

define 中的# ## 一般是用来拼接字符串的

```cpp
#define  strcpy__(dst, src)      strcpy(dst, #src)
     
strcpy__(buff,abc)  相当于 strcpy__(buff,“abc”)

#define FUN(arg)     my##arg
则     FUN(ABC)
等价于  myABC

```

```cpp
int (*func[5])(int *);  
/*看完整的右左法则”解析：
func右边是一个[]运算符，说明func是具有5个元素的数组；func的左边有一个*，说明func的元素是指针（注意这里的*不是修饰func，而是修饰func[5]的，原因是[]运算符优先级比*高，func先跟[]结合，把func[]看成一个整体）。跳出这个括号，看右边，又遇到圆括号，说明func数组的元素是函数类型的指针，它指向的函数具有int*类型的形参，返回值类型为int.*/
//用typedef来定义这些复杂的类型，比如上面的函数指针，格式为：

typedef  返回类型  (*新类型名)  (参数表)

typedef char(*PTRFUN)(int); //定义char(*)(int)的函数指针 的别名为PTRFUN
PTRFUN pfun;  //直接用别名PTRFUN定义char(*)(int)类型的变量

char getchar(int a) //定义一个形参为int，返回值为char的函数
{
    return '1';
}
int main()
{
    pfun = getchar; //把函数赋给指针
    (*pfun)(5);     //用函数指针取函数，调用
    return 0;
}
```

typedef能做的using都可以做。

```cpp
typedef int arr[10];
using arr=int[10];
typedef void (*FP) (int, const std::string&);
using FP = void (*) (int, const std::string&);
```

举出一个typedef做不到，而using可以做到的例子：alias templates, 模板别名

```cpp

template <typename T>
using Vec = MyVector<T, MyAlloc<T>>;

    // usage
Vec<int> vec;

template <typename T> using BinNodePosi = BinNode<T>*; //节点位置
   BinNodePosi<T> parent, lc, rc; //父节点及左、右孩子

使用时在普通类型别名语法的基础上增加 template 的参数列表




那么，若你使用typedef来做这一切：

    template <typename T>
    typedef MyVector<T, MyAlloc<T>> Vec;
     
    // usage
    Vec<int> vec;

当你使用编译器编译的时候，将会得到类似：error: a typedef cannot be a template的错误信息。。

所以using和typedef都有各自的用处，并没有谁好谁坏，而标准委员会他们的观点是，在C++11中，鼓励用using，而不用typedef的

#define定义的常量以及一些宏语句的任务（如果常量是表达式的值则应用const），而typedef和using则常用来定义关键字、冗长的类型的别名。
```

### decltype

declare type

使用typeid运算符来查询一个变量的类型是在**运行时进行**。

decltype与auto关键字一样，用于进行**编译时类型推导**，不过它与auto还是有一些区别的。decltype的类型推导并不是像auto一样是从变量声明的初始化表达式获得变量的类型，而是总是以一个普通表达式作为参数，返回该表达式的类型,而且decltype并不会对表达式进行求值。

auto 和 decltype 关键字都可以自动推导出变量的类型，但它们的用法是有区别的：

```cpp
auto varname = value;
decltype(exp) varname = value;
```

其中，varname 表示变量名，**value 表示赋给变量的值**，exp 表示一个表达式。auto 根据=右边的初始值 value 推导出变量的类型，而 decltype 根据 exp 表达式推导出变量的类型，跟=右边的 value 没有关系。

必须要保证 exp 的结果是有类型的，不能是 void.

- 如果 exp 是一个不被括号( )包围的表达式，或者是一个类成员访问表达式，或者是一个单独的变量，那么 decltype(exp) 的类型就和 exp 一致，这是最普遍最常见的情况。
  
- 如果 exp 是函数调用，那么 decltype(exp) 的类型就和函数返回值的类型一致。
  
- 如果 exp 是一个左值，或者被括号( )包围，那么 decltype(exp) 的类型就是 exp 的引用；假设 exp 的类型为 T，那么 decltype(exp) 的类型就是 T&。

- 如果 exp 是一个将亡值(*xvalue,引用rvalue产生*)，decltype(exp)的类型就是T&&;
  
```cpp
int i = 4;
    int arr[5] = { 0 };
    int *ptr = arr;
    struct S{ double d; }s ;
    void Overloaded(int);
    void Overloaded(char);//重载的函数
    int && RvalRef();
    const bool Func(int);
 
    //规则一：推导为其类型
    decltype (arr) var1; //int 标记符表达式
 
    decltype (ptr) var2;//int *  标记符表达式
 
    decltype(s.d) var3;//double 成员访问表达式
 
    //decltype(Overloaded) var4;//重载函数。编译错误。
 
    //规则二：将亡值。推导为类型的右值引用。
 
    decltype (RvalRef()) var5 = 1;
 
    //规则三：左值，推导为类型的引用。
 
    decltype ((i))var6 = i;     //int&
 
    decltype (true ? i : i) var7 = i; //int&  条件表达式返回左值。
 
    decltype (++i) var8 = i; //int&  ++i返回i的左值。
 
    decltype(arr[5]) var9 = i;//int&. []操作返回左值
 
    decltype(*ptr)var10 = i;//int& 解引用操作返回左值

     typedef std::remove_reference<decltype(*b)>::type Type;//得到b的类型,b必须已经初始化，可用于模板函数体中所需类型的推断(传入类型为对象指针，但要new一个对象)
 
    decltype("hello")var11 = "hello"; //const char(&)[9]  字符串字面常量为左值，且为const左值。

 
    //规则四：以上都不是，则推导为本类型
 
    decltype(1) var12;//const int
 
    decltype(Func(1)) var13=true;//const bool
 
    decltype(i++) var14 = i;//!int i++返回右值

```

```cpp
 int i = 4;
    decltype(i) a; //推导结果为int。a的类型为int。

     using size_t = decltype(sizeof(0));//sizeof(a)的返回值为size_t类型
    using ptrdiff_t = decltype((int*)0 - (int*)0);
    using nullptr_t = decltype(nullptr);
    vector<int >vec;
    typedef decltype(vec.begin()) vectype;
    for (vectype i = vec.begin; i != vec.end(); i++)
    {
        //...
    }
    //这样和auto一样也提高了代码的可读性。

```

```cpp
struct 
{
    int d ;
    doubel b;
}anon_s;
//借助decltype使用匿名类型
decltype(anon_s) as ;//定义了一个上面匿名的结构体
```

```cpp
//判断左右值引用
 cout << is_lvalue_reference<decltype(++i)>::value << endl;//1
  cout << is_rvalue_reference<decltype(++i)>::value << endl;//0
  //对于i++推导类型为右值，所以都是0
 ```

### is_same

可以用于模板根据不同的参数类型做出不同的操作

```cpp
#include <type_traits>
    template<typename TYPE>
typeCheck(TYPE data)
{
    if(std::is_same<TYPE,int>::value)
    {
        std::cout<<"int type";
        //do something int 
    }
    else
    {
        //.........
    }
}
int main()
{
    std::cout << std::boolalpha;

    std::cout << std::is_same<int, int32_t>::value << '\n';   // true
    std::cout << std::is_same<int, int64_t>::value << '\n';   // false
    std::cout << std::is_same<float, int32_t>::value << '\n'; // false

    print_separator();

    std::cout << std::is_same<int, int>::value << "\n";          // true
    std::cout << std::is_same<int, unsigned int>::value << "\n"; // false
    std::cout << std::is_same<int, signed int>::value << "\n";   // true

    print_separator();

    // unlike other types 'char' is not 'unsigned' and not 'signed'
    std::cout << std::is_same<char, char>::value << "\n";          // true
    std::cout << std::is_same<char, unsigned char>::value << "\n"; // false
    std::cout << std::is_same<char, signed char>::value << "\n";   // false
}

//也可以配合decltype比较变量的类型
```

### 列表初始化

```cpp
class Foo
{
public:
    Foo(int) {}
private:
    Foo(const Foo &);
};
int main(void)
{
    Foo a1(123);
    Foo a2 = 123;  //error: 'Foo::Foo(const Foo &)' is private
    Foo a3 = { 123 };
    Foo a4 { 123 };
    int a5 = { 3 };
    int a6 { 3 };
    return 0;
}
/*，a3、a4 使用了新的初始化方式来初始化对象，效果如同 a1 的直接初始化。

a5、a6 则是基本数据类型的列表初始化方式。可以看到，它们的形式都是统一的。

这里需要注意的是，a3 虽然使用了等于号，但它仍然是列表初始化，因此，私有的拷贝构造并不会影响到它。*/
int* arr = new int[3] { 1, 2, 3 };

struct Foo
{
    Foo(int, double) {}
};
Foo func(void)
{
    return { 123, 321.0 };
}
//这里的 return 语句就如同返回了一个 Foo(123, 321.0)。

```

### 返回数组指针和函数指针

```cpp
//数组名的类型:type(*)[size];
int (*func(int i))[10]//(*func(int i))[10]表示解引用func返回值得到的是一个大小为10的数组
//使用类型别名
typedef int arr[10];//==using arr=int[10];
arr* func(int i);
//使用尾置返回类型
auto func(int i)->int(*)[10]；//返回一个指针，该指针指向含有10个整数的数组
//auto 表示真正的返回值在形参列表之后
//使用decltype
int a[]={1,2,3};
decltype(a) *func(int i);
```

```cpp
//函数名的类型:returnType(*)(paralist);
/*函数类型的形参会被转换成函数指针，而返回函数时不会自动转换，由于不能返回函数，所以必须显式指定为函数指针以返回。*/
int (*f1(int))(int,int);

using F=int(int,int);//函数
using PF=int(*)(int,int);//函数指针
PF f1(int);
F *f1(int);//F*=FP;

auto  f1(int)->int(*)(int,int);

int F(int,int);
decltype(F) *f1(int);

```

### lambda匿名函数

```cpp
[外部变量访问方式说明符] (参数) (opt:mutable noexcept/throw()) -> 返回值类型
{
   函数体;//函数体内除了可以使用指定传递进来的参数之外，还可以使用指定的外部变量以及全局范围内的所有全局变量。
};//注意这个分号
//所谓外部变量，指的是和当前 lambda 表达式位于同一作用域内的所有局部变量。
auto f = [](int a) -> int { return a + 1; };//为匿名函数设置名称(只使用一次的话就不必了)
std::cout << f(1) << std::endl;  // 输出: 2
//C++11 中允许省略 lambda 表达式的返回值定义：
auto f = [](int a){ return a + 1; };
auto x1 = [](int i){ return i; };  // OK: return type is int
auto x2 = [](){ return { 1, 2 }; };  // error: 无法推导出返回值类型
auto x2 = []()->std::vector<int>{ return { 1, 2 }; };  

```

```cpp
lambda 表达式还可以通过捕获列表捕获一定范围内的变量：
[] 不捕获任何变量。
[&] 捕获外部作用域中所有变量，并作为引用在函数体中使用（按引用捕获）。
[=] 捕获外部作用域中所有变量，并作为副本在函数体中使用（按值捕获）。
[=，&foo] 按值捕获外部作用域中所有变量，并按引用捕获 foo 变量。
[&,=foo],与上一个配套
[bar] 按值捕获 bar 变量，同时不捕获其他变量。
[this] 捕获当前类中的 this 指针，让 lambda 表达式拥有和当前类成员函数同样的访问权限。如果已经使用了 & 或者 =，就默认添加此选项。捕获 this 的目的是可以在 lamda 中使用当前类的成员函数和成员变量。

A lambda can only capture local variables. When a lambda is defined within a member function, you may believe that you are capturing a member variable of the current class, but in fact, what you are capturing is this. This may be very surprising, and lead to bugs if the lambda is then used after the current object has been destroyed.

//在类中定义lambda表达式函数时对成员变量的访问是通过捕获的this指针而不是直接访问主调对象成员，在类成员函数中调用lambda表达式**可能会不能正确捕获到当前对象的this指针**。

0x7fff8fd78ef0//对象地址
0x7fff8fd78ef0//成员函数中的this
0x7fff8fd78e60//成员函数中调用的lambda表达式中的this

This rule does not apply if the capture list of the lambda contains *this (possible since C++17). In that situation, what is captured is not the pointer this, but a local copy of the object pointed-to by this and any reference to this (explicit or implicit) in the lambda body then refers to this local copy

向捕获列表传入*this可解决,但不能修改

function里的lambda不能用，会出奇怪的错误

 It's useful when you need a copy of *this - for example, when this itself is no longer valid by the time the lambda is evaluated.

```
![a](https://cdn.nextptr.com/images/uimages/SpPZ6mR7ZHbGok_e9eTsj902.png)

```cpp
class A
{
    public:
    int i_ = 0;
    void func(int x, int y)
    {
        auto x1 = []{ return i_; };                    // error，没有捕获外部变量
        auto x2 = [=]{ return i_ + x + y; };           // OK，捕获所有外部变量
        auto x3 = [&]{ return i_ + x + y; };           // OK，捕获所有外部变量
        auto x4 = [this]{ return i_; };                // OK，捕获this指针
        auto x5 = [this]{ return i_ + x + y; };        // error，没有捕获x、y
        auto x6 = [this, x, y]{ return i_ + x + y; };  // OK，捕获this指针、x、y
        auto x7 = [this]{ return i_++; };              // OK，捕获this指针，并修改成员的值
    }
};
int a = 0, b = 1;
auto f1 = []{ return a; };               // error，没有捕获外部变量
auto f2 = [&]{ return a++; };            // OK，捕获所有外部变量，并对a执行自加运算
auto f3 = [=]{ return a; };              // OK，捕获所有外部变量，并返回a
auto f4 = [=]{ return a++; };            // error，a是以复制方式捕获的，无法修改
auto f5 = [a]{ return a + b; };          // error，没有捕获变量b
auto f6 = [a, &b]{ return a + (b++); };  // OK，捕获a和b的引用，并对b做自加运算
auto f7 = [=, &b]{ return a + (b++); };  // OK，捕获所有外部变量和b的引用，并对b做自加运算
//注意，单个外部变量不允许以相同的传递方式导入多次。例如 [=，val1] 中，val1 先后被以值传递的方式导入了 2 次，这是非法的。
```

lambda 表达式的类型在 C++11 中被称为“闭包类型（Closure Type）”。它是一个特殊的，匿名的非 union 的类类型，属于函数对象。

按照 C++ 标准，lambda 表达式的 operator() 默认是 const 的。一个 const 成员函数是无法修改成员变量的值的。而 mutable 的作用，就在于取消 operator() 的 const。

*由于值传递进来的只是同一作用域的外部变量，所以全局变量不会被遮盖，函数体可以访问和修改全局变量*。

```cpp
int a = 0;
auto f1 = [=]{ return a++; };             // error，修改按值捕获的外部变量
auto f2 = [=]() mutable { return a++; };  // OK，mutable(mutable的一个用处是允许被const成员函数修改),注意在后置返回式之前
```

**对于没有捕获任何变量的 lambda 表达式，还可以被转换成一个普通的函数指针**，它的捕获列表捕获住的任何外部变量，最终均会变为闭包类型的成员变量。而一个使用了成员变量的类的 operator()，如果能直接被转换为普通的函数指针，那么 lambda 表达式本身的 this 指针就丢失掉了。而没有捕获任何外部变量的 lambda 表达式则不存在这个问题
，**如果捕获了变量则只能用auto作为类型，其它函数调用时形参需要用function类**。

```cpp
using func_t = int(*)(int);//函数指针
func_t f = [](int a){ return a; };//可用auto替代
f(123);
auto f1=[=](int a){ return a; };
void func(std::Function<int(int)> &f);
```

```cpp
#include <iostream>
using namespace std;
int main()
{
    auto except = []()throw(int) {
        throw 10;
    };
    try {
        except();
    }
    catch (int) {
        cout << "捕获到了整形异常";
    }
    return 0;
}
```

简化函数

```cpp
 sort(num, num+4, [=](int x, int y) -> bool{ return x < y; } );

 ```

 代替函数对象

```cpp
class CountEven//通过一般的函数对象实现 
{
    int& count_;
public:
    CountEven(int& count) : count_(count) {}
    void operator()(int val)
    {
        if (!(val & 1))       // val % 2 == 0
        {
            ++ count_;
        }
    }
};
for_each(v.begin(), v.end(), CountEven(even_count));
//简化后
for_each( v.begin(), v.end(), [&even_count](int val)
        {
            if (!(val & 1))  // val % 2 == 0
            {
                ++ even_count;
            }
        });
//for_each的实现原理
template < typename InputIterator, typename Function >
Function for_each(InputIterator beg, InputIterator end, Function f)  {
  while(beg != end) 
    f(*beg++);
}
//lambda函数可以简便的满足一元谓词的输入条件，多余的参数通过它的捕获传入即可
```

### bitset

![i.png](https://i.loli.net/2021/10/27/btFcXpISNfKUqur.png)

```cpp
//bitset的大小在编译时就需要确定。如果想要不确定长度的bitset，可以使用奇葩的vector<bool>。
 bitset<32> bitvec1(0xbeef); //小于高位补零，大于截高
    bitset<32> bitvec2(0ULL) ;   //0 :unsigned  long  long
        bitset<32>
            bitvec3(~0ULL);
    bitset<32> bitvec4("1100"); //bitset<32>bitvec4;
    string s="1111111110000000001111111";
    bitset<32> bitvec5(s,5,4);
    cin>> bitvec6;//最多16个
    cout<<bitvec1<<endl<<bitvec2<<endl<<bitvec3<<endl<<bitvec4<<endl;
    //支持逻辑运算
     bitvec2=bitvec1|bitvec2;
     bitvec3~=bitvec4;
     bitvec3=bitvec1&bitvec5;
``` 

```cpp
bitset<32>bitvec(1U);
bool is_set=bitvec.any();//存在置位
bool is_not_set=bitvec.none();
bool all_set= bitvec.all();
size_t onBits=bitvec.count();//置位数
size_t ze= bitvec.size();
bitvec.filp();//翻转
bitvec.reset();//复位
bitvec.set();//置位

bitvec.filp(0);
bitvec.set(0,1);
bitvec.reset(i);
bitvec.test(i);

//重载的下标运算符
bitvec[i].flip();
bitvec[i].set();
~bitvec[i];

//提取

unsigned long ulong=to_ulong(bitvec);
unsigned long long ullong=to_ullong(bitvec);

//与普通位运算的关系
ulong|=1UL<<x;
bitvec.set(x);
bool check=ulong&(1UL<<x);
check=bitvec[x];
ulong&=~(1UL<<x);
bitvec.reset(x);
```

```cpp


```

### 随机数

在转换rand()(产生0到32767(系统相关)之间的数)的范围，类型或分布使其满足所需条件(浮点数，非均匀等)时常常会引入非随机性

random头文件中的随机数库可以解决这个问题，它由一组协作的类:随机数引擎和随机数分布类组成，前者生成一个随机数序列，后者利用该随机数序列得到符合要求的随机数

```cpp
#include <random>
default_random_engine e;//最常用
for(size_t i=0;i<10;i++)
cout<<e();
//会得到一组随机数列；但范围不定，不能直接使用
//随机数引擎操作
Engine e;//默认种子
Engine e(s);//整形s作为种子，如果用time(NULL)(秒级)可能会多次使用同一个对象
e.seed(s);
e.min(),e.max();
Engine::result_type;
```

一个随机数发生器是指分布对象和引擎对象的组合

```cpp
default_random_engine e;
//定义分布类型对象
uniform_int_distribution<unsigned> u(0,9)//生成随机整数
u(e);//产生0到9的随机数
uniform_real_distribution<double> u(0,1)//生成随机实数默认参数为double，用rand()的结果除以RAND_MAX可以获得，但不够随机
u(e);//产生0到1的随机小数
vector<unsigned> v;
for(size_t i=0;i<100;i++)//如果要多次调用这段生成代码则会产生相同的vector，因为一个给定的随机数发生器会产生相同的序列
v.emplace_back(u(e));

//要解决这个问题需要将两个对象定义为静态的，第一次调用会获取前100个，第二次获取后一百个；

//分布类型的操作
d(e);
d.min();    
d.max();
d.reset();//重建d的状态
```

```cpp 
//生成非均匀分布的额随机数
default_random_engine e;
normal_distribution<> n(4,1,5);//正太分布，均值4，标准差1.5
vector<unsigned>vals(9);
for(size_t i = 0; i !=200;i++)
{
    unsigned v=lround(n(e));//舍入为最接近的整数(cmath)
        if(v<val.size())//统计在范围内的
        ++val[v];
}
for(size_t j=0;j!=vals.size();j++)//打印
cout<<j<<string(val[j],'*')<endl;

```

```cpp
//0/1随机数
default_random_engine e;
bernoulli_distribution b;//伯努利分布
b(e);//返回随机布尔值;

bernoulli_distribution b(.55);//提供先行优势，0.55/0.45
```

两个要点

1、随机数发生器使用同一种子会生成相同序列的随机数序列

2、为了让程序每次运行都会生成不同的随机结果，我们可以使用 time(0) 产生一个随机数种(两次程序运行间隔一般不会低于秒级)

## C++string

### 基本

C++ 大大增强了对字符串的支持，除了可以使用C风格的字符串，还可以使用内置的 string 类。string 类处理起字符串来会方便很多，完全可以代替C语言中的字符数组或字符串指针。

使用 string 类需要包含头文件 \<string>，下面的例子介绍了几种定义 string 变量（对象）的方法：

```cpp
#include <iostream>
#include <string>
using namespace std;
int main(){
    string s1;
    string s2 = "c plus plus";
    string s3 = s2;
    string s4 (5, 's');
    return 0;
}
```

变量 s1 只是定义但没有初始化，编译器会将默认值赋给 s1，默认值是""，也即空字符串。

变量 s2 在定义的同时被初始化为"c plus plus"。与C风格的字符串不同，**string 的结尾没有结束标志'\0'**。

变量 s3 在定义的时候直接用 s2 进行初始化，因此 s3 的内容也是"c plus plus"。

变量 s4 被初始化为由 5 个's'字符组成的字符串，也就是"sssss"。

与C风格的字符串不同，当我们需要知道字符串长度时，可以调用 string 类提供的 length() 函数。

strlen(s)->s.length();

虽然 C++ 提供了 string 类来替代C语言中的字符串，但是在实际编程中，有时候必须要使用C风格的字符串（例如打开文件时的路径），为此，string 类为我们提供了一个转换函数 c_str()，该函数能够将 string 字符串转换为C风格的字符串，并返回该字符串的 const 指针（const char*）。

**C ++的string对象实质上就是一个容器,其内部有一个c_str方法能够返回一个指向的实质存储字符串副本的数据成员。即通过string::c_str()配合printf函数可以获取的字符串副本的内存地址。**

```cpp
string path = "D:\\demo.txt";
FILE *fp = fopen(path.c_str(), "rt");

```

string 类重载了输入输出运算符，可以像对待普通变量那样对待 string 变量，也就是用>>进行输入，用<<进行输出.

输入运算符 **>>默认会忽略空格，遇到空格就认为输入结束** .

有了 string 类，我们可以使用+或+=运算符来直接拼接字符串，非常方便，再也不需要使用C语言中的 strcat()、strcpy()、malloc() 等函数来拼接字符串了，再也不用担心空间不够会溢出了。

用+来拼接字符串时，运算符的两边可以都是 string 字符串，也可以是一个 string 字符串和一个C风格的字符串，还可以是一个 string 字符串和一个字符数组，或者是一个 string 字符串和一个单独的字符。

在比较两个string对象时是可以**利用“==”的，相等的话，则表达式的返回值为1，不等为0** 。

**通过 "+="可以连接两个字符串（在一个string对象后追加）**，特别的string s="Hello"+"world"是错误的，因为两个字符串字面量都是const char*类型,不能被修改。可以写作string s="Hello";s+="world".或string s= string("Hello")+"world"或s="Hello"s+"world";采用给string追加的方式追加。

insert() 函数可以在 string 字符串中指定的位置插入另一个字符串，它的一种原型为：
string& insert (size_t pos, const string& str);

pos 表示要插入的位置，也就是下标；str 表示要插入的字符串，它可以是 string 字符串，也可以是C风格的字符串。

**push_back()和pop_back():在尾部添删元素**.

```cpp
#include <iostream>
#include <string>
using namespace std;
int main(){
    string s1, s2, s3;
    s1 = s2 = "1234567890";
    s3 = "aaa";
    s1.insert(5, s3);
    cout<< s1 <<endl;
    s2.insert(5, "bbb");
    cout<< s2 <<endl;
    return 0;
}
运行结果：
12345aaa67890
12345bbb67890
```

insert() 函数的第一个参数有越界的可能，如果越界，则会产生运行时异常.

erase() 函数可以删除 string 中的一个子字符串。它的一种原型为：

string& erase (size_t pos = 0, size_t len = npos);

pos 表示要删除的子字符串的起始下标，len 表示要删除子字符串的长度。如果不指明 len 的话，那么直接删除从 pos 到字符串结束处的所有字符（此时 len = str.length - pos）。

```cpp
#include <iostream>
#include <string>
using namespace std;
int main(){
    string s1, s2, s3;
    s1 = s2 = s3 = "1234567890";
    s2.erase(5);
    s3.erase(5, 3);
   data.erase(0, 1);
   //可以不用显式调用迭代器
    cout<< s1 <<endl;
    cout<< s2 <<endl;
    cout<< s3 <<endl;
    return 0;
}
运行结果：
1234567890
12345
1234590
```

在 pos 参数没有越界的情况下， len 参数也可能会导致要删除的子字符串越界。但实际上这种情况不会发生，erase() 函数会从以下两个值中取出最小的一个作为待删除子字符串的长度：
len 的值；
字符串长度减去 pos 的值。

**待删除字符串最多只能删除到字符串结尾。**

substr() 函数用于从 string 字符串中提取子字符串，它的原型为：

string substr (size_t pos = 0, size_t len = npos) const;

pos 为要提取的子字符串的起始下标，len 为要提取的子字符串的长度。

```cpp
#include <iostream>
#include <string>
using namespace std;
int main(){
    string s1 = "first second third";
    string s2;
    s2 = s1.substr(6, 6);
    cout<< s1 <<endl;
    cout<< s2 <<endl;
    return 0;
}
运行结果：
first second third
second
```

```cpp
string s="lalal";
s.push_back("lala");//没有emplace_back();
s.pop_back();

```

系统对 substr() 参数的处理和 erase() 类似：
如果 pos 越界，会抛出异常；
如果 len 越界，会提取从 pos 到字符串结尾处的所有字符。

find() 函数

find() 函数用于在 string 字符串中查找子字符串出现的位置，它其中的两种原型为：
size_t find (const string& str, size_t pos = 0) const;
size_t find (const char* s, size_t pos = 0) const;

第一个参数为待查找的子字符串，它可以是 string 字符串，也可以是C风格的字符串。第二个参数为开始查找的位置（下标）；如果不指明，则从第0个字符开始查找。**pos越界返回npos。**

find() 函数最终返回的是子字符串第一次出现在字符串中的起始下标。本例最终是在下标6处找到了 s2 字符串。**如果没有查找到子字符串，那么会返回npos。**

rfind() 和 find() 很类似，同样是在字符串中查找子字符串，不同的是 find() 函数从第二个参数开始往后查找，而 **rfind() 函数则最多查找到第二个参数处** ，如果到了第二个参数所指定的下标还没有找到子字符串，则返回npos。

**find_first_of() 函数用于查找子字符串和字符串共同具有的字符在字符串中首次出现的位置。**

**find()必须全部相等，find_first_of()只需要一个字符相等。**

与find_first_of()相对的还有**find_last_of()**，返回被搜索串中最后一个相等字符的位置。

字符查找函数查找成功都会返回目标位置的下标，失败都会返回**npos=-1,类型是unsign long int** ，是size_t的最大值=

$$
2^{64}-1
$$

表示不存在的位置，可以与-1比较是否相等；

\<string\>中不包含判断contain的函数，可以自定义一个bool变量或函数

```cpp
bool contain = s.find("xxx")!=string::npos
```

string作为参数传递时最好用引用传递，因为复制一个字符串很慢，一般情况下传进去的字符串不需要被修改，所以一般用*const std::string& s*作为参数

string 在内部封装了与内存和容量有关的信息。具体地说，**C++ string 对象知道自己在内存中的开始位置、包含的字符序列以及字符序列长度；当内存空间不足时，string 还会自动调整，让内存空间增长到足以容纳下所有字符序列的大小。**

string的定义在isotream里，但各种操作符的重载和成员函数在\<string\>里

本编译器中\<isotream\>已经包含了\<string\>,不include它也没有问题

C++ string 的这种做法，极大地减少了C语言编程中三种最常见且最具破坏性的错误：

数组越界；
通过未被初始化或者被赋以错误值的指针来访问数组元紊；
释放了数组所占内存，但是仍然保留了“悬空”指针。
C++ 标准没有定义 string 类的内存布局，各个编译器厂商可以提供不同的实现，但必须保证 string 的行为一致。采用这种做法是为了获得足够的灵活性。

只有当字符串被修改的时候才创建各自的拷贝，这种实现方式称为**写时复制（copy-on-write）策略**。当字符串只是作为值参数（value parameter）或在其他只读情形下使用，这种方法能够节省时间和空间。

### \<cctype\>

```cpp
<cctype>(<ctype.h>)
isalnum
Check if character is alphanumeric 
isalpha
Check if character is alphabetic 
isblank 
Check if character is blank 
iscntrl
Check if character is a control character 
isdigit
Check if character is decimal digit 
isgraph
Check if character has graphical representation 
islower
Check if character is lowercase letter 
isprint
Check if character is printable 
ispunct
Check if character is a punctuation character 
isspace
Check if character is a white-space 
isupper
Check if character is uppercase letter
isxdigit
Check if character is hexadecimal digit 

Character conversion functions
Two functions that convert between letter cases:
tolower
Convert uppercase letter to lowercase 
toupper
Convert lowercase letter to uppercase 
```

```cpp
std::string str="Hello";
for(auto c:str)//auto:char
c=toupper(c);
```

### size_type

size_type由string类类型和vector类类型定义的类型，用以保存任意string对象或vector对象的长度，标准库类型将size_type定义为*unsigned*类型。
string抽象意义是字符串， size（）的抽象意义是字符串的尺寸， string::size_type抽象意义是尺寸单位类型。

string::size_type它在不同的机器上，长度是可以不同的，并非固定的长度。但只要你使用了这个类型，就使得你的程序适合这个机器。与实际机器匹配。

 typedef typename std::vector\<T\>::size_type size_type; //,通过别名使用size_type,typename告诉编译器size_type是一个类型而不是成员

数组使用的是size_t，size_type是它的别名，64位机器上是unsigned long long int

### 字符串字面量(String literal)

```cpp
#include <iostream>

字符串字面量原本类型是 const char[N]，长度是已知的。
 
char array1[] = "Foo" "bar";
// same as
char array2[] = { 'F', 'o', 'o', 'b', 'a', 'r', '\0' };
 
const char* s1 = R"foo(
Hello
  World
)foo";//R标识后可以使用源格式输入字符串
// same as
const char* s2 = "\nHello\n  World\n";
// same as
const char* s3 = "\n"
                 "Hello\n"
                 "  World\n";
const wchar_t* s4 = L"ABC" L"DEF"; // ok, same as
const wchar_t* s5 = L"ABCDEF";
const char32_t* s6 = U"GHI" "JKL"; // ok, same as
const char32_t* s7 = U"GHIJKL";
const char16_t* s9 = "MN" u"OP" "QR"; // ok, same as
const char16_t* sA = u"MNOPQR";
const char * sB = u8"lalala""hehe";//ok, same as
const char * sC ="lalalahehe"
 
 //wchar_t:宽字符，在windows平台相当于char16_t,在linux平台相当于char32_t
// const auto* sB = u"Mixed" U"Types";
        // before C++23 may or may not be supported by
        // the implementation; ill-formed since C++23//本编译器在C++23之后，也不支持
        //指定了字面值的类型就可以用auto或auto*代替变量类型,不指定类型默认是char(u8)
 
const wchar_t* sC = LR"--(STUV)--"; // ok, raw string literal
 
int main()
{
    std::cout << array1 << ' ' << array2 << '\n'
              << s1 << s2 << s3 << std::endl;
    std::wcout << s4 << ' ' << s5 << ' ' << sC
               << std::endl;
}
//char16_t和char32_t是对应unicode字符的,通常unicode字符是不会拿来直接做输入输出的，需要转换后才能做输入输出。
using namespace std::string_literals;
  std::string s="lalala"s+"lala""leilei";// s返回一个string，可以进行连接
  //等同于s=string("lalala")+"lala";
  char ch ='s';
    s+=ch+","s;
//宽字符输出中文
  const auto *chinese=L"啦啦啦";
std::ios::sync_with_stdio(false);    // Linux gcc.
    std::locale::global(std::locale(""));//这句可选
    std::wcout.imbue(std::locale("")); 
     std::wcout <<chinese<<std::endl;
      printf("%ls\n",chinese);
    
```

### stringstream

包括ostringstream和istringstream

继承关系如下

![1](https://img-blog.csdnimg.cn/20190407152136561.png?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L2xpdXdlaXl1eGlhbmc=,size_16,color_FFFFFF,t_70)

```cpp
istream& getline (istream&  is, string& str, char delim);
/*Extracts characters from is and stores them into str until the delimitation character delim is found (or the newline character, '\n';

The extraction also stops if the *end of file* is reached in is or if some other *error* occurs during the input operation.

If the delimiter is found, it is *extracted and discarded* (i.e. **it is not stored and the next input operation will begin after it**).

Note that any content in str before the call is *replaced* by the newly extracted sequence.
*/
/*delim的缺省值是'\n',istream一般用cin，但当需要重复提取一个输入时，串结束时getline不会返回0使得循环结束，只能ctrl+d结束流使得读取结束(读取结束时最后的部分没有delim符也会被读取)，解决方法就是用<sstream>里的stringstream函数将string变成流,这样就可以顺利读取并返回0退出循环(最后一段读取会遇到流里面的EOF)，stringstream ss(s);*/

```

**效果类似将一个txt输入文件重定向**.

```cpp时


  string pairstr = "(1,2)(3,4)(7,9)(4,6)(6,1)(0,5)";
    stringstream ss(pairstr);
    vector<pair<int, int>> pairs;
    pair<int, int> p;
    char c;
    // ss.rdbuf()->in_avail() != 0//一种判空方式
    while (ss >> c >> p.first >> c >> p.second >> c)
    { 
        pairs.emplace_back(p);
    }
//对同一个stringstream对象重复赋值要清空流
     ss.clear();//清空流(缓存还在),还能继续读取字符串
    ss.str("");//清空流缓存,不能再使用了
    ss.str().length();
    ss.str(s);
    ss<<s;//与上面的等价
    ss(s)//错误
//to_string原理
    void to_string(string & result,const T& t)
{
    ostringstream oss;       //创建一个输出流
    oss << t;               //把值传递如流中
    result = oss.str();     //获取转换后的字符转并将其写入result
}
string ss = "10000";//模拟atoi
int n = 0;
stream << ss;
stream >> n;              //n等于10000
```

## C++引用

### 基本()

在 C++ 中，我们有了一种比指针更加便捷的传递聚合类型数据的方式，那就是引用（Reference）。

在 C/C++ 中，我们将 char、int、float 等由语言本身支持的类型称为基本类型，将数组、结构体、类（对象）等由基本类型组合而成的类型称为聚合类型

引用（Reference）是 C++ 相对于C语言的又一个扩充。引用可以看做是数据的一个别名，通过这个别名和原来的名字都能够找到这份数据。

引用的定义方式类似于指针，只是用&取代了*，语法格式为：

type &name = data;

type 是被引用的数据的类型，name 是引用的名称，data 是被引用的数据。引用必须在定义的同时初始化，并且以后也要从一而终，不能再引用其它数据，这有点类似于常量（const 变量）。

**注意，引用在定义时需要添加&，在使用时不能添加&，使用时添加&表示取地址**.

如果不希望通过引用来修改原始的数据，那么可以在定义时添加 const 限制，形式为：

const type &name = value;

也可以是：
type const &name = value;

这种引用方式为**常引用**

作为函数参数

```cpp
void creatGlist(Glist&);
Glist C=creatGlist(C);//等价于Glist C；C=creatGlist;
Glist creatGlist(Glist &C){}
```

在将引用作为函数返回值时应该注意一个小问题，就是不能返回局部数据（例如局部变量、局部对象、局部数组等）的引用，因为当函数调用完成后局部数据就会被销毁，有可能在下次使用时数据就不存在了，C++ 编译器检测到该行为时也会给出警告。

### 返回引用

1、返回非引用类型：

函数的返回值用于初始化在调用函数时创建的临时对象(temporary object)，如果返回类型不是引用，在调用函数的地方会将函数返回值复制给临时对象。
在求解表达式的时候，如果需要一个地方存储其运算结果，编译器会创建一个没命名的对象，这就是临时对象。C++程序员通常用temporary这个术语来代替temporary object。
用函数返回值初始化临时对象与用实参初始化形参的方法是一样的。
当函数返回非引用类型时，其返回值既可以是局部对象，也可以是求解表达式的结果。
2、返回引用类型：

**当函数返回引用类型时，没有复制返回值，相反，返回的是对象本身**。
**千万不要返回局部对象的引用！千万不要返回指向局部对象的指针！**
当函数执行完毕时，将释放分配给局部对象的存储空间。此时对局部对象的引用就会指向不确定的内存！返回指向局部对象的指针也是一样的，当函数结束时，局部对象被释放，返回的指针就变成了不再存在的对象的悬垂指针。

```cpp

#include <iostream>
using namespace std;
int &plus10(int &r) {
    int m = r + 10;
    return m;  //返回局部数据的引用
}
int main() {
    int num1 = 10;
    int num2 = plus10(num1);
    cout << num2 << endl;
    int &num3 = plus10(num1);num3和num4是局部变量m的引用，值会被下一次引用破坏
    int &num4 = plus10(num3);
    cout << num3 << " " << num4 << endl;
    return 0;
}
```

本编译器不允许，会报段错误

### 指针与引用

**指针传递参数本质上是值传递的方式，它所传递的是一个地址值**。值传递过程中，被调函数的形式参数作为被调函数的局部变量处理，即在栈中开辟了内存空间以存放由主调函数放进来的实参的值，从而成为了实参的一个副本。值传递的特点是被调函数对形式参数的任何操作都是作为局部变量进行，不会影响主调函数的实参变量的值。

而在引用传递过程中，被调函数的形式参数虽然也作为局部变量在栈中开辟了内存空间，但是这时**存放的是由主调函数放进来的实参变量的地址**。被调函数对形参的任何操作都被处理成**间接寻址**，即通过栈中存放的地址访问主调函数中的实参变量。正因为如此，被调函数对形参做的任何操作都影响了主调函数中的实参变量。

★相同点：

●都是地址的概念；

指针指向一块内存，它的内容是所指内存的地址；而引用则是某块内存的**别名**。

★不同点：

●指针是一个实体，而引用仅是个别名；

●引用只能在定义时被初始化一次，之后不可变；指针可变；**引用“从一而终”**，指针可以 **“见异思迁”**；

●**引用不能为空，指针可以为空**；

●“sizeof 引用”得到的是所指向的**变量(对象)的大小**，而“sizeof 指针”得到的是指针本身的大小；

●指针和引用的自增(++)运算意义不一样；

●引用是类型安全的，而指针不是 (引用比指针多了类型检查

**传指针的好处是可以传入NULL表示不处理，而引用必须绑定到实际的对象**。

### 临时变量、引用参数和const引用

如果**实参与引用参数不匹配，C++将生成临时变量**。如果引用参数是const,则编译器在下面两种情况下生成临时变量：

**实参类型是正确的，但不是左值,实参类型不正确，但可以转换为正确的类型**.

**左值参数是可被引用的数据对象**，例如，变量、数组元素、结构成员、引用和被解除引用的指针都是左值，**非左值包括字面常量(100)和包含多项式的表达式(a+100)**;

如果声明将引用指定为const，C++将在必要时生成临时变量、实际上，对于形参为const引用的C++函数，**如果实参不匹配，则其行为类似于按值传递，为确保原始数据不被修改，将使用临时变量来存储值**

函数形参应尽可能使用const

使用const可以避免无意中修改数据的编程错误

使用const使函数**能够处理const和非const实参，否则将只能接受非const数据**

使用const引用使函数能够正确生成并使用临时变量

### 右值引用

虽然 C++98/03 标准不支持为右值建立非常量左值引用，但允许使用常量左值引用操作右值。也就是说，常量左值引用既可以操作左值，也可以操作右值

```cpp
int num = 10;
const int &b = num;
const int &c = 10;
```

右值往往是没有名称的，因此要使用它只能借助引用的方式。这就产生一个问题，实际开发中我们可能需要对右值进行修改（实现移动语义时就需要），显然左值引用的方式是行不通的。

左值引用&;右值引用&&；

右值引用只能绑定到将要销毁的对象，实现对右值资源的移动，不能绑定左值,使用右值引用的对象可以自由接管所引用对象的资源。

返回左值引用的函数，连同赋值 、下标 、解引用和**前置递增 ，递减运算符** ，都是返回左值的表达式的例子 。 我们可以将一个左值引用绑定到这类表达式的结果上 。
返回非引用类型的函数，连同算术 、关系 、位以及**后置递增 ，递减运算符**（表达式的值是暂时的，递增，递减后会改变）， 都生成右值 。我们不能将一个左值引用绑定到这类表达式上 ， 但我们可以将一个**const 的左值引用或者一个右值**引用绑定到这类表达式上 。

```cpp

const int&& a = 10;//编译器不会报错,但并无实际用处
const int &r1=i*20;//正确
int &&r2=i*20;//正确
int &r3=i*20;//错误 
std::move()：返回对象的右值引用//重名可能性大，最好带上std::
int &&r4=std::move(i)//i将不能再使用，可以销毁或赋值

```

### 引用限定符

所谓引用限定符，就是在成员函数的后面添加 "&" 或者 "&&"，从而限制调用者的类型（左值还是右值）。

需要注意的一点是，当 const && 修饰类的成员函数时，调用它的对象只能是右值对象；当 const & 修饰类的成员函数时，调用它的对象既可以是左值对象，也可以是右值对象。无论是 const && 还是 const & 限定的成员函数，内部都不允许对当前对象做修改操作。

```cpp
     int get_num() &//仅左值
     {
         return this->num;
     }
     int get_num()&&//仅右值
     {
         return this->num;
     }
  //左值和右值对象都可以调用
    int get_num2() const &{
        return this->num;
    }
    //仅供右值对象调用
    int get_num2() const && {
        return this->num2;
    }
    //对于重载函数要么都加引用限定符，要么都不加；
     cout << a.get_num() << endl;        // 正确
    cout << move(a).get_num() << endl;  // 正确
   
    //cout << a.get_num2() << endl;     // 错误 
    cout << move(a).get_num2() << endl; // 正确
```

### 移动构造函数和move

指的就是以移动而非深拷贝的方式初始化含有指针成员的类对象，即转交指针的所有权，而非深拷贝其指向的内容，

```cpp
class movedemo{
public:
    movedemo():num(new int(0)){
        cout<<"construct!"<<endl;
    }
    //拷贝构造函数(深拷贝)
    movedemo(const movedemo &d):num(new int(*d.num)){
        cout<<"copy construct!"<<endl;
    }
    //移动构造函数
    movedemo(movedemo &&d):num(d.num){
        d.num = nullptr;//销毁右值时会运行析构函数，需要保证销毁它是无害的(否则对应空间会被释放)，一般情况下需要自定义复制构造函数时也需要自定义移动构造函数，以保证销毁右值无害
        cout<<"move construct!"<<endl;
    }
public:     //这里应该是 private，使用 public 是为了更方便说明问题
    int *num;
};
int main(){
    movedemo demo;
    cout << "demo2:\n";
    movedemo demo2 = demo;
    //cout << *demo2.num << endl;   //可以执行
    cout << "demo3:\n";
    movedemo demo3 = std::move(demo);//过调用 move() 函数可以得到 demo 对象的右值形式，用其初始化 demo3 对象，编译器会优先调用移动构造函数。//const &和&&里会优先选择&&,同理左值优先选前者
    //此时 demo.num = nullptr，因此下面代码会报运行时错误
    //cout << *demo.num << endl;
    return 0;//std::move只是进行类型转换而不会进行内存的转移，转换之后原左值的状态没有任何改变，但可能会被移动构造函数改变，例如指针被置空。对string这样操作也会被置空,所以很可能会导致原左值残缺，最好不要再使用，一般只剩下内置变量，不会浪费很多空间，能达到一定程度的移动，在确保安全的情况的使用std::move()传参;
}
```

## 继承和派生

### 基本(a)

继承（Inheritance）可以理解为一个类从另一个类获取成员变量和成员函数的过程。例如类 B 继承于类 A，那么 B 就拥有 A 的成员变量和成员函数。

在C++中，派生（Derive）和继承是一个概念，只是站的角度不同。继承是儿子接收父亲的产业，派生是父亲把产业传承给儿子。

被继承的类称为父类或基类，继承的类称为子类或派生类。“子类”和“父类”通常放在一起称呼，“基类”和“派生类”通常放在一起称呼。

派生类除了拥有基类的成员，还可以定义自己的新成员，以增强类的功能。

以下是两种典型的使用继承的场景：

**1) 当你创建的新类与现有的类相似，只是多出若干成员变量或成员函数时，可以使用继承，这样不但会减少代码量，而且新类会拥有基类的所有功能**。

**2) 当你需要创建多个类，它们拥有很多相似的成员变量或成员函数时，也可以使用继承。可以将这些类的共同成员提取出来，定义为基类，然后从基类继承，既可以节省代码，也方便后续修改成员**.

class Student: public People

这就是声明派生类的语法。class 后面的“Student”是新声明的派生类，冒号后面的“People”是已经存在的基类。在“People”之前有一关键宇 public，用来表示是公有继承。

由此总结出继承的一般语法为：
class 派生类名:［继承方式］ 基类名{
    派生类新增加的成员
};

三种继承

1) 基类成员在派生类中的访问权限不得高于继承方式中指定的权限。例如，当继承方式为 protected 时，那么基类成员在派生类中的访问权限最高也为 protected，高于 protected 的会降级为 protected，但低于 protected 不会升级。再如，当继承方式为 public 时，那么基类成员在派生类中的访问权限将保持不变。
也就是说，**继承方式中的 public、protected、private 是用来指明基类成员在派生类中的最高访问权限的。**

2) 不管继承方式如何，**基类中的 private 成员在派生类中始终不能使用（不能在派生类的成员函数中访问或调用）。**

3) 如果希望基类的成员能够被派生类继承并且毫无障碍地使用，那么这些成员只能声明为 public 或 protected；只有那些不希望在派生类中使用的成员才声明为 private。

4) 如果希望基类的成员既不向外暴露（不能通过对象访问），还能在派生类中使用，那么只能声明为 protected。

注意，我们这里说的是基类的 private 成员不能在派生类中使用，并没有说基类的 private 成员不能被继承。实际上，基类的 private 成员是能够被继承的，并且（成员变量）会占用派生类对象的内存，它**只是在派生类中不可见，导致无法使用**罢了。private 成员的这种特性，能够很好的对派生类隐藏基类的实现，以体现面向对象的封装性。

由于 private 和 protected 继承方式会改变基类成员在派生类中的访问权限，导致继承关系复杂，所以实际开发中我们一般使用 public。

在**派生类中访问基类 private 成员的唯一方法就是借助基类的非 private 成员函数**，如果基类没有非 private 成员函数，那么该成员在派生类中将无法访问。

```cpp
//基类People
class People{
public:
    void setname(char *name);
    void setage(int age);
    void sethobby(char *hobby);
    char *gethobby();
protected:
    char *m_name;
    int m_age;
private:
    char *m_hobby;
};
//派生类Student
class Student : public People {
public:
    void learning();
public:
    using People::m_name;  //将protected改为public
    using People::m_age;  //将protected改为public
    float m_score;
private:
    using People::show;  //将public改为private
};
```

**using 只能改变基类中 public 和 protected 成员的访问权限，不能改变 private 成员的访问权限**.

**protected成员只在该类及其派生类中可见**。

在继承情况下，**派生类的作用域嵌套在基类作用域中**：如果不能在派生类作用域中确定名字，就在外围基类作用域中查找该名字的定义。

如果派生类中的成员（包括成员变量和成员函数）和基类中的成员重名，那么就会**遮蔽从基类继承过来的成员**。所谓遮蔽，就是在派生类中使用该成员（包括在定义派生类时使用，也包括通过派生类对象访问该成员）时，实际上使用的是派生类新增的成员，而不是从基类继承来的。

基类成员函数和派生类成员函数**不会构成重载**，如果派生类有同名函数，那么就会遮蔽基类中的所有同名函数，**不管它们的参数是否一样**。

```cpp
  //使用的是派生类新增的成员函数，而不是从基类继承的
    stu.show();
    //使用的是从基类继承来的成员函数
    stu.People::show();
```

如果派生类想**通过自身类型使用基类所有的重载函数**,则派生类必须要么重定义所有重载函数（全是新的）,要么一个也不重定义（全是旧的）。

有时类需要仅仅重定义一个重载版本，并且想要继承其他版本的含义,在这种情况下，派生类不用重定义所继承的每一个基类版本,它可以为重载成员提供using声明。一个using声明只能指定一个名字,不能指定形参表,因此：**using声明会将该函数的所有重载实例加到派生类的作用域**。将所有名字加入作用域之后,派生类只需要重定义本类型确实必须定义的那些函数,对其他版本可以使用继承的定义。

```cpp
struct Base
{
    int memfuc();
    int memfuc(int);
    int memfuc(double);
};
 
struct Derived : Base
{
    using Base::memfuc;
    int memfuc();   //重定义,其余为基类的定义
};
```

### 基类和派生类构造和析构函数

构造函数和析构函数都不能被继承,只能使用

```cpp
Student::Student(char *name, int age, float score): People(name, age), m_score(score){ }
```

不管它们的顺序如何，派生类构造函数总是**先调用基类构造函数再执行其他代码**（包括参数初始化表以及函数体中的代码)

因为基类构造函数不会被继承，不能当做普通的成员函数来调用。换句话说，只能将**基类构造函数的调用放在初始化列表**，不能放在函数体中,***构造函数访问基类变量则只能放在函数体中，不能放在头部,并要用this指向***。

构造函数的调用顺序是按照继承的层次自顶向下、从基类再到派生类的。

派生类构造函数中只能调用直接基类的构造函数，不能调用间接基类的。，因为我们在 C 中调用了 B 的构造函数，B 又调用了 A 的构造函数，相当于 C 间接地（或者说隐式地）调用了 A 的构造函数，如果再在 C 中显式地调用 A 的构造函数，那么 A 的构造函数就被调用了两次，相应地，初始化工作也做了两次，这不仅是多余的，还会浪费CPU时间以及内存，毫无益处，所以 C++ 禁止在 C 中显式地调用 A 的构造函数。 

通过派生类创建对象时**必须要调用基类的构造函数**，这是语法规定。换句话说，定义派生类构造函数时最好指明基类构造函数；如果不指明，就调用基类的默认构造函数（不带参数的构造函数）；如果没有默认构造函数，那么编译失败。

在派生类的析构函数中不用显式地调用基类的析构函数，因为每个类只有一个析构函数，编译器知道如何选择

创建派生类对象时，构造函数的执行顺序和继承顺序相同，即先执行基类构造函数，再执行派生类构造函数。
而销毁派生类对象时，析构函数的执行顺序和继承顺序相反，即先执行派生类析构函数，再执行基类析构函数。

### 多继承

多继承（Multiple Inheritance），即一个派生类可以有两个或多个基类。

```cpp
class D: public A, private B, protected C{
    //类D新增加的成员
}
```

![lala](https://pic4.zhimg.com/80/v2-57f57ec3edbebf7e55374bb4954cd477_1440w.jpg)

多继承下的构造函数
多继承形式下的构造函数和单继承形式基本相同，只是要在派生类的构造函数中调用多个基类的构造函数。

```cpp
D(形参列表): A(实参列表), B(实参列表), C(实参列表){
    //其他操作
}
```

**调用顺序和声明派生类时基类出现的顺序相同，同样的，调用析构函数的顺序是相反的**。

### 借助指针访问非public变量

正常情况下，我们没有办法通过对象访问，protected 和 private 类变量，但是借助指针，我们依然可以实现访问所有变量，只要我们拿到 对象的收地址，再根据数据类型推导指针地址变化长度，就可以实现突破限制访问protected 和 private 类变量。

```cpp

 std::cout << *(int *)&entity << std::endl;//private在类最开始处定义
    std::cout << *(int *)((char*)&entity+sizeof(int)) << std::endl;
    std::cout << *(int *)((int*)&entity+1) << std::endl;//和上一个等价，char是一个byte，int是四个

```

### 虚继承

菱形继承中，类 A 派生出类 B 和类 C，类 D 继承自类 B 和类 C，这个时候类 A 中的成员变量和成员函数继承到类 D 中变成了两份，一份来自 A-->B-->D 这条路径，另一份来自 A-->C-->D 这条路径。

通过D使用A中的变量为了消除歧义需要指明变量是来自B还是C的

为了解决多继承时的命名冲突和冗余数据问题，C++ 提出了虚继承，使得在派生类中只保留一份间接基类的成员。

**在继承方式前面加上 virtual 关键字就是虚继承**.

虚继承的目的是让某个类做出声明，承诺愿意共享它的基类。其中，这个被共享的基类就称为虚基类（Virtual Base Class），本例中的 A 就是一个虚基类。在这种机制下，**不论虚基类在继承体系中出现了多少次，在派生类中都只包含一份虚基类的成员**。

必须在虚派生的真实需求出现前就已经完成虚派生的操作。在上图中，当定义 D 类时才出现了对虚派生的需求，但是如果 B 类和 C 类不是从 A 类虚派生得到的，那么 D 类还是会保留 A 类的两份成员。

换个角度讲，虚派生只影响从指定了虚基类的派生类中进一步派生出来的类，它不会影响派生类本身。

假设 A 定义了一个名为 x 的成员变量，当我们在 D 中直接访问 x 时，会有三种可能性：
如果 B 和 C 中都没有 x 的定义，那么 x 将被解析为 A 的成员，此时不存在二义性。
如果 B 或 C 其中的一个类定义了 x，也不会有二义性，派生类的 x 比虚基类的 x 优先级更高。
如果 B 和 C 中都定义了 x，那么直接访问 x 将产生二义性问题。

使用多继承经常会出现二义性问题，必须十分小心,只有在比较简单和不易出现二义性的情况或实在必要时才使用多继承，能用单一继承解决的问题就不要使用多继承。也正是由于这个原因，C++ 之后的很多面向对象的编程语言，例如 Java、C#、PHP 等，都不支持多继承。

### 虚继承的构造函数

虚基类 A 在最终派生类 D 中只保留了一份成员变量 m_a，如果由 B 和 C 初始化 m_a，那么 B 和 C 在调用 A 的构造函数时很有可能给出不同的实参，这个时候编译器就会犯迷糊，不知道使用哪个实参初始化 m_a。

为了避免出现这种矛盾的情况，C++ 干脆规定**必须由最终的派生类 D 来初始化虚基类 A**，直接派生类 B 和 C 对 A 的构造函数的调用**是无效的**。在以往的普通继承中，派生类的构造函数只负责初始化它的直接基类，再由直接基类的构造函数初始化间接基类，用户尝试调用间接基类的构造函数将导致错误。

在最终派生类的构造函数调用列表中，不管各个构造函数出现的顺序如何，编译器总是先调用虚基类的构造函数，再按照出现的顺序调用其他的构造函数；而对于普通继承，就是按照构造函数出现的顺序依次调用的。

### 向上转型

类其实也是一种数据类型，也可以发生数据类型转换，不过这种转换只有在基类和派生类之间才有意义，并且只能将派生类赋值给基类，**包括将派生类对象赋值给基类对象、将派生类指针赋值给基类指针、将派生类引用赋值给基类引用**，这在 C++ 中称为向上转型（Upcasting）。相应地，将基类赋值给派生类称为向下转型（Downcasting）。

向上转型非常安全，可以由编译器自动完成；向下转型有风险，需要程序员手动干预。

对象赋值

赋值的本质是将现有的数据写入已分配好的内存中，对象的内存只包含了成员变量，所以**对象之间的赋值是成员变量(共有的)的赋值，成员函数不存在赋值问题**。运行结果也有力地证明了这一点，虽然有a=b;这样的赋值过程，但是 a.display() 始终调用的都是 A 类的 display() 函数。换句话说，对象之间的赋值不会影响成员函数，也不会影响 this 指针。

指针赋值

pa 本来是基类 A 的指针，现在指向了派生类 D 的对象，这使得隐式指针 this 发生了变化，也指向了 D 类的对象，所以最终在 display()(A类的) 内部使用的是 D 类对象的成员变量，**通过基类指针只能使用派生类的成员变量，但不能使用派生类的成员函数**

编译器**通过指针来访问成员变量**，指针指向哪个对象就使用哪个对象的数据；编译器**通过指针的类型来访问成员函数**，指针属于哪个类的类型就使用哪个类的函数（注意函数里的参数也是指针所属类的，指向派生类后会使用其继承的变量，不会使用派生类的同名变量）

**基类的指针或引用的静态类型(编译时已知)和动态类型(运行时已知)可能不一致**.

在进行指针赋值的时候。将子类指针赋值个父类指针，编译器会做如下处理：让指针指向子类中父类对象的起始位置。

![a](https://imgconvert.csdnimg.cn/aHR0cDovL2MuYmlhbmNoZW5nLm5ldC91cGxvYWRzL2FsbGltZy8xOTAyMTQvMUc1NDkxQTAtMC5qcGc?x-oss-process=image/format,png)

上面是D的内存模型，B类对象和C类对象在内存中的先后顺序是依据继承时的顺序决定的。这就是为什么pa pb和pd的地址相同，pc和pd不同的原因

引用赋值

基类的引用也可以指向派生类的对象，并且它的表现和指针是类似的。

当用一个派生类对象为一个基类对象初始化或赋值时，只有基类部分会被拷贝，移动或赋值，**其它部分会被切掉**。
例如一个函数形参是基类，实参是派生类的情况，当**使用引用或指针时可以避免被切掉**。

## 多态和虚函数

### 基本(2)

让基类指针能够访问派生类的成员函数，C++ 增加了虚函数（Virtual Function）

在同名函数声明前加 virtual 即可，类外定义时不能加

有了虚函数，基类指针指向基类对象时就使用基类的成员（包括成员函数和成员变量），指向派生类对象时就使用派生类的成员。换句话说，基类指针可以按照基类的方式来做事，也可以按照派生类的方式来做事，它有多种形态，或者说有多种表现方式，我们将这种现象称为多态（Polymorphism）。

C++提供多态的目的是：可以通过基类指针对所有派生类（包括直接派生和间接派生）的成员变量和成员函数进行“全方位”的访问，尤其是成员函数。如果没有多态，我们只能访问成员变量

虚函数是根据指针的指向来调用的，**指针指向哪个类的对象就调用哪个类的虚函数**。

引用与指针类似，也可以实现多态。

派生类比较多时，如果不使用多态，那么就需要定义多个指针变量，很容易造成混乱；而有了多态，只需要一个指针变量 p 就可以调用所有派生类的虚函数。

1) 只需要在虚函数的声明处加上 virtual 关键字，函数定义处可以加也可以不加。

2) *可以只将基类中的函数声明为虚函数*，这样所有派生类中具有遮蔽关系的同名函数都将自动成为虚函数。

3) 当在基类中定义了虚函数时，**如果派生类没有定义新的函数来遮蔽此函数，那么将使用基类的虚函数**。

4) 只有派生类的虚函数覆盖基类的虚函数（函数原型相同）才能构成多态（通过基类指针访问派生类函数）。例如基类虚函数的原型为virtual void func();，派生类虚函数的原型为virtual void func(int);，那么当基类指针 p 指向派生类对象时，语句p -> func(100);将会出错，而语句p -> func();将调用基类的函数。

5) 构造函数不能是虚函数。对于基类的构造函数，它仅仅是在派生类构造函数中被调用，这种机制不同于继承。也就是说，派生类不继承基类的构造函数，将构造函数声明为虚函数没有什么意义，并且对象未创建完成时还无法查询虚函数表。也就不知道调用哪一个构造函数。

6) 析构函数可以声明为虚函数，而且有时候必须要声明为虚函数。

构成多态的条件：

- 必须存在继承关系；
- 继承关系中*必须有同名的虚函数，并且它们是覆盖关系（函数原型相同）*。
- 存在基类的指针，通过该指针调用虚函数。

**首先看成员函数所在的类是否会作为基类。然后看成员函数在类的继承后有无可能被更改功能，如果希望更改其功能的，一般应该将它声明为虚函数。如果成员函数在类被继承后功能不需修改，或派生类用不到该函数，则不要把它声明为虚函数。**

虚函数可以是内联函数，内联是可以修饰虚函数的，但是当虚函数表现多态性的时候不能内联。
内联是在编译期建议编译器内联，而虚函数的多态性在运行期，编译器无法知道运行期调用哪个代码，因此虚函数表现为多态性时（运行期）不可以内联。
inline virtual **唯一可以内联的时候是：编译器知道所调用的对象是哪个类（如 Base::who()），这只有在编译器具有实际对象而不是对象的指针或引用时才会发生**。

### 虚析构函数的必要性

对于指向派生类的基类指针，在没有虚函数的情况下只能调用基类的析构函数，这会产生未定义的行为（例如导致delete调用基类析构函数在释放内存时，没有将派生类对象产生的堆内存释放掉），导致内存泄露

**只要基类的析构函数是虚函数，那么派生类的析构函数不论是否用virtual关键字声明，都自动成为虚析构函数**。

虚析构函数原理

由于基类的析构函数为虚函数，所以派生类会在所有属性的前面形成虚表，而虚表内部存储的就是基类的虚函数。
当delete基类的指针时，由于派生类的析构函数与基类的析构函数构成多态，所以得**先调动派生类的析构函数**；之所以再调动基类的析构函数，是因为delete的机制所引起的,delete 基类指针所指的空间，要调用基类的析构函数。

一般情况下一个类需要定义析构函数，那么它也需要自定义拷贝构造函数和重载赋值运算符，因为需要析构函数说明类成员有不能简单复制的指针变量。而虚析构函数只需要自定义一个空的虚构函数即可，情况不同。

多重继承中**每个基类都要定义虚析构函数**

 如果不需要基类对派生类及对象进行操作,则不能定义虚函数,因为这样会增加内存开销.当类里面有定义虚函数的时候,编译器会给类添加一个虚函数表,里面来存放虚函数指针,这样就会增加类的存储空间。所以,**只有当一个类被用来作为基类的时候,并且有使用到*基类指针*操作派生类的情况时**，才把析构函数写成虚函数。

```cpp
virtual ~className(){}
virtual ~className()=default//推荐,但作用一样
```

### 纯虚函数和抽象类

```cpp
virtual 返回值类型 函数名 (函数参数) = 0;
```

**纯虚函数可以没有函数体，只有函数声明**，在虚函数声明的结尾加上=0，表明此函数为纯虚函数。

包含纯虚函数的类称为抽象类（*Abstract Class*）。之所以说它抽象，是因为它**无法实例化**，也就是无法创建对象。原因很明显，纯虚函数没有函数体，不是完整的函数，无法调用，也无法为其分配内存空间。

抽象类通常是作为基类，让派生类去实现纯虚函数。**派生类必须实现纯虚函数才能被实例化**,因为否则会继承基类的纯虚函数而称为抽象类。

在实际开发中，你可以定义一个抽象基类，只完成部分功能，未完成的功能交给派生类去实现（谁派生谁实现）。这部分未完成的功能，往往是基类不需要的，或者在基类中无法实现的。虽然抽象基类没有完成，但是却强制要求派生类完成，这就是抽象基类的“霸王条款”。

抽象基类除了约束派生类的功能，还可以实现多态。**抽象基类的指针指向派生类后向可以访问派生类中虚函数的实现**。

抽象类又被称为**接口**，C++中没有interface，只能用抽象类实现。

1) **一个纯虚函数就可以使类成为抽象基类(必须实现了基类中的所有纯虚函数，才能成为非抽象类。)**，但是抽象基类中除了包含纯虚函数外，还可以包含其它的成员函数（虚函数或普通函数）和成员变量。

2) **只有类中的虚函数才能被声明为纯虚函数**，普通成员函数和顶层函数均不能声明为纯虚函数.

普通虚函数同时继承接口和缺省实现是危险的，如果忘记重写就会调用基类的实现，但这不一定是想要的实现。目的是既可以使用缺省的实现，而忘记重写又不会误调用缺省的实现。

解决：

1) 纯虚函数+缺省实现 ，因为是纯虚函数，所以只有接口被继承，其缺省的实现不会被继承。派生类要想使用该缺省的实现，必须显式的调用（这种方式继承类也最好加上override以作为标识）

```cpp
class Airplane {
public:
    virtual void Fly(const string& destination) = 0;
};
 
void Airplane::Fly(const string& destination)//纯虚函数也可以有定义
{
    // a pure virtual function default code for flying an airplane to the given destination
}
class ModelA: public Airplane {
public:
    virtual void Fly(const string& destination) { Airplane::Fly(destination); }//显式调用
};　　
```

2)使用关键字 override

描述：override保留字表示当前函数重写了基类的虚函数。

目的：1.在函数比较多的情况下可以提示读者某个函数重写了基类虚函数（表示这个虚函数是从基类继承，不是派生类自己定义的）；2.强制编译器检查某个函数是否重写基类虚函数，如果没有则报错。

补充：在派生类中，重写 (override) 继承自基类成员函数的实现 (implementation) 时，要满足如下条件：

  一虚：基类中，成员函数声明为虚拟的 (virtual)

  二容：基类和派生类中，成员函数的返回类型和异常规格 (exception specification) 必须兼容

  四同：基类和派生类中，成员函数名、形参类型、常量属性 (constness) 和 引用限定符 (reference qualifier) 必须完全相同

  如此多的限制条件，导致了虚函数重写如上述代码，极容易因为一个不小心而出错,**出错就相当于定义了一个新的函数而没有重写继承的函数**。

  C++11 中的 override 关键字，可以显式的在派生类中声明，哪些成员函数需要被重写，如果没被重写，则编译器会报错。

final关键字:

C++ 中增加了 final 关键字来**限制某个类不能被继承，或者某个虚函数不能被重写**，和 Jave 的 final 关键字的功能是类似的。如果使用 final 修饰函数，只能修饰虚函数，并且要把final关键字放到类或者函数的后面。

```cpp
class NoDerived final {\\}
virtual void func() final
```

### 虚函数的私有

```cpp
class Base { 
    public: 
        virtual void fun() { cout << "Base Fun"; } 
     //   friend int main(); 
}; 

class Derived: public Base { 
    private: 
        void fun() { cout << "Derived Fun"; } 
}; 

int main() 
{ 
    Base *ptr = new Derived; 
    ptr->fun(); 
    return 0; 
}//基类指针可以访问派生类中私有的虚函数实例。
```

如果在基类中将虚函数声明为私有的，则需要将int main()声明为友元，在main函数里就变成公有了。

```cpp
class Base { 
    private: 
        virtual void fun() { cout << "Base Fun"; } 
        friend int main(); 
}; 
```

### vtable and vptr

![1](https://pic4.zhimg.com/80/v2-091c5dd35c1e3324340e9dada9b56f53_1440w.jpg)

有了虚函数以后，对象所占用的存储空间比没有虚函数时多了 4 个字节。实际上，任何有虚函数的类及其派生类的对象都包含这多出来的 4 个字节，这 4 个字节就是实现多态的关键——它位于对象存储空间的最前端，其中存放的是虚函数表的地址。

每一个有虚函数的类（或有虚函数的类的派生类）都有一个虚函数表(vtable)，该类的任何对象中都放着该虚函数表的指针（可以认为这是由编译器自动添加到构造函数中的指令完成的）。

假设 pa 的类型是 A*，则 pa->func() 这条语句的执行过程如下：

1) 取出 pa 指针所指位置的前 4 个字节，即对象所属的类的虚函数表的地址（**在 64 位编译模式下，由于指针占 8 个字节，所以要取出 8 个字节**）。如果 pa 指向的是类 A 的对象，则这个地址就是类 A 的虚函数表的地址；如果 pa 指向的是类 B 的对象，则这个地址就是类 B 的虚函数表的地址。

2) 根据虚函数表的地址找到虚函数表，在其中查找要调用的虚函数的地址。不妨认为虚函数表是以函数名作为索引来查找的，虽然还有更高效的查找方法。
如果 pa 指向的是类 A 的对象，自然就会在类 A 的虚函数表中查出 A::func 的地址；如果 pa 指向的是类 B 的对象，就会在类 B 的虚函数表中查出 B::func 的地址。
类 B 没有自己的 func2 函数，因此在类 B 的虚函数表中保存的是 A::func2 的地址，这样，即便 pa 指向类 B 的对象，pa->func2();这条语句在执行过程中也能在类 B 的虚函数表中找到 A::func2 的地址。

3) 根据找到的虚函数的地址调用虚函数。

由以上过程可以看出，只要是通过基类指针或基类引用调用虚函数的语句，就一定是多态的，也一定会执行上面的查表过程，哪怕这个虚函数仅在基类中有，在派生类中没有。

多态机制能够提高程序的开发效率，但是也增加了程序运行时的开销。虚函数表、各个对象中包含的 4 个字节的虚函数表的地址都是空间上的额外开销；而查虚函数表的过程则是时间上的额外开销。

vptr在创建类实例时自动设置，以便指向该类的虚拟表。与this指针不同，**this指针实际上是编译器用来解析自引用的函数参数，vptr是一个真正的指针**。因此，它使每个类对象的分配大一个指针的大小。这也意味着vptr由派生类继承.**所有同类对象，共享一个vtable**，但是每个对象都自带一个vptr指向这个vtable,否则调用虚函数的时候会找不到正确的函数入口

如果父类的虚函数没有被子类改写， 那么子类的虚函数表中的元素就是父类的对应的虚函数指针；相反，如果子类改写了父类的虚函数，那么对应的虚函数表中的元素就是自己的虚函数指针，决议这个指向的过程发生在运行时，就是所谓的动态绑定.

```cpp
Virtual *p = new Entity(1, 2);
  void* vptr=(void*)*(unsigned long*)p;//获取vptr
  //提取指针指向位置存储的前八个字节,unsigned long 可以写作int64_t
  void* fun_addr=(void*)*((int64_t)vptr+offset)//从vtable截取函数地址，offset 取0,1,2...,
```

```cpp
vtable：
0x555555558ca8(vptr) <_ZTV6Entity+16>:	0xa2	0x67	0x55	0x55	0x55	0x55	0x00	0x00//~Entity()
0x555555558cb0 <_ZTV6Entity+24>:	0xd0	0x67	0x55	0x55	0x55	0x55	0x00	0x00//~Entity()
0x555555558cb8 <_ZTV6Entity+32>:	0x36	0x66	0x55	0x55	0x55	0x55	0x00	0x00//func()
0x555555558cc0 <_ZTV6Entity+40>:	0x90	0x66	0x55	0x55	0x55	0x55	0x00	0x00//func2()
0x555555558cc8 <_ZTV6Entity+48>:	0xcc	0x66	0x55	0x55	0x55	0x55	0x00	0x00
0x555555558cd0 <_ZTV7Virtual>:	0x00	0x00	0x00	0x00	0x00	0x00	0x00	0x00
0x555555558cd8 <_ZTV7Virtual+8>:	0x38	0x8d

0x5555555567a2 <Entity::~Entity()>:	0xf3	0x0f	0x1e	0xfa	0x55	0x48	0x89	0xe5
0x5555555567aa <Entity::~Entity()+8>:	0x48	0x83	0xec	0x10	0x48	0x89	0x7d	0xf8
0x5555555567b2 <Entity::~Entity()+16>:	0x48	0x8d	0x15	0xef	0x24	0x00	0x00	0x48
0x5555555567ba <Entity::~Entity()+24>:	0x8b	0x45	0xf8	0x48	0x89	0x10	0x48	0x8b
0x5555555567c2 <Entity::~Entity()+32>:	0x45	0xf8	0x48	0x89	0xc7	0xe8	0x16	0xfd
0x5555555567ca <Entity::~Entity()+40>:	0xff	0xff	0x90	0xc9	0xc3	0x90	0xf3	0x0f
0x5555555567d2 <Entity::~Entity()+2>:	0x1e	0xfa

0x555555556690 <Entity::func2()>:	0xf3	0x0f	0x1e	0xfa	0x55	0x48	0x89	0xe5
0x555555556698 <Entity::func2()+8>:	0x48	0x83	0xec	0x10	0x48	0x89	0x7d	0xf8
0x5555555566a0 <Entity::func2()+16>:	0x48	0x8d	0x35	0x78	0x09	0x00	0x00	0x48
0x5555555566a8 <Entity::func2()+24>:	0x8d	0x3d	0x92	0x29	0x00	0x00	0xe8	0x5d
0x5555555566b0 <Entity::func2()+32>:	0xfa	0xff	0xff	0x48	0x89	0xc2	0x48	0x8b
0x5555555566b8 <Entity::func2()+40>:	0x05	0x13	0x29	0x00	0x00	0x48	0x89	0xc6
0x5555555566c0 <Entity::func2()+48>:	0x48	0x89

0x555555556636 <Entity::func()>:	0xf3	0x0f	0x1e	0xfa	0x55	0x48	0x89	0xe5
0x55555555663e <Entity::func()+8>:	0x48	0x83	0xec	0x10	0x48	0x89	0x7d	0xf8
0x555555556646 <Entity::func()+16>:	0x48	0x8b	0x45	0xf8	0x8b	0x40	0x08	0x89
0x55555555664e <Entity::func()+24>:	0xc6	0x48	0x8d	0x3d	0xea	0x29	0x00	0x00
0x555555556656 <Entity::func()+32>:	0xe8	0x25	0xfb	0xff	0xff	0xbe	0x20	0x00
0x55555555665e <Entity::func()+40>:	0x00	0x00	0x48	0x89	0xc7	0xe8	0xf8	0xfa
0x555555556666 <Entity::func()+48>:	0xff	0xff

```

### typeid运算符：获取类型信息

因为type_info类的复制构造函数和赋值运算符都是私有的，所以不允许用户自已创建type_info的类。唯一要使用type_info类的方法就是使用typeid函数。

typeid 运算符用来获取一个表达式的类型信息。类型信息对于编程语言非常重要，它描述了数据的各种属性：
对于基本类型（int、float 等C++内置类型）的数据，类型信息所包含的内容比较简单，主要是指数据的类型。
对于类类型的数据（也就是对象），类型信息是指对象所属的类、所包含的成员、所在的继承关系等。

类型信息是创建数据的模板，数据占用多大内存、能进行什么样的操作、该如何操作等，这些都由它的类型信息决定。

typeid 会把获取到的类型信息保存到一个 type_info 类型的对象里面，并返回该对象的常引用；当需要具体的类型信息时，可以通过成员函数来提取

```cpp
/*std::type_info is not copyable, so you cannot store it by value. You can use a reference if it suits your needs:
const std::type_info &a(typeid(int));*/
//本编译器不支持赋值运算符，只能用复制构造函数,并且不支持raw_name()
      typeid(d).name()//可以不用中间对象
    #include <typeinfo>
    const type_info &nInfo = typeid(n);
    cout<<nInfo.name()<<" | "<<nInfo.raw_name()<<" | "<<nInfo.hash_code()<<endl;
    //获取一个字面量的类型信息
    const type_info &dInfo = typeid(25.65);
    cout<<dInfo.name()<<" | "<<dInfo.raw_name()<<" | "<<dInfo.hash_code()<<endl;
    //获取一个对象的类型信息
    Base obj;
    const type_info &objInfo = typeid(obj);
    cout<<objInfo.name()<<" | "<<objInfo.raw_name()<<" | "<<objInfo.hash_code()<<endl;
    //获取一个类的类型信息
    const type_info &baseInfo = typeid(Base);
    cout<<baseInfo.name()<<" | "<<baseInfo.raw_name()<<" | "<<baseInfo.hash_code()<<endl;
    //获取一个结构体的类型信息
    const type_info &stuInfo = typeid(struct STU);
    cout<<stuInfo.name()<<" | "<<stuInfo.raw_name()<<" | "<<stuInfo.hash_code()<<endl;
    //获取一个普通类型的类型信息
    const type_info &charInfo = typeid(char);
    cout<<charInfo.name()<<" | "<<charInfo.raw_name()<<" | "<<charInfo.hash_code()<<endl;
    //获取一个表达式的类型信息
    const type_info &expInfo = typeid(20 * 45 / 4.5);
    cout<<expInfo.name()<<" | "<<expInfo.raw_name()<<" | "<<expInfo.hash_code()<<endl;
```

name() 用来返回类型的名称。

Gcc的name()返回的是简写,要全称则用如下方式

```cpp
#include <cxxabi.h>

int status;
  char *realname;
  const std::type_info &ti = typeid(p);
  realname = abi::__cxa_demangle(ti.name(), 0, 0, &status);
  std::cout << ti.name() << "\t=> " << realname << "\t: " << status << '\n';
  free(realname);
```

raw_name() 用来返回名字编码（Name Mangling）算法产生的新名称

函数倾轧（name mangling）： 同名不同参函数（重载函数），C++底层如何区分他们，那就是对函数改名，也就是中文翻译的“倾轧”

可用反汇编命令查看名字编码

 objdump -t class(可执行文件名)

 用c++filt查看原函数

 c++filt _ZN6Derive4funcEv

 输出：Derive::func()

hash_code() 用来返回当前类型对应的 hash 值。hash 值是一个可以用来标志当前类型的整数，有点类似学生的学号、公民的身份证号、银行卡号等。不过 hash 值有赖于编译器的实现，在不同的编译器下可能会有不同的整数，但它们都能唯一地标识某个类型。

C++ 标准只对 type_info 类做了很有限的规定，不仅成员函数少，功能弱，而且各个平台的实现不一致

为了减小编译后文件的体积，编译器不会为所有的类型创建 type_info 对象，只会为使用了 typeid 运算符的类型创建。不过有一种特殊情况，就是带虚函数的类（包括继承来的），不管有没有使用 typeid 运算符，编译器都会为带虚函数的类创建 type_info 对象

**表达式typeid(\*p1) == typeid(Base)和typeid(p1) == typeid(Base\*)的结果为 true 可以说明：即使将派生类指针 p2 赋值给基类指针 p1，p1 的类型仍然为 Base\***。

### sizeof获取类的大小

空类的大小为1字节
一个类中，虚函数本身、成员函数（包括静态与非静态）和静态数据成员都是不占用类对象的存储空间。
对于包含虚函数的类，不管有多少个虚函数，**只有一个虚指针,vptr的大小**。
普通继承，派生类继承了所有基类的函数与成员，要按照字节对齐来计算大小
虚函数继承，不管是单继承还是多继承，都是继承了基类的vptr。(32位操作系统4字节，**64位操作系统 8字节**)！
虚继承,继承基类的vptr。

### RTTI

RTTI(Run Time Type Identification)即通过运行时类型识别，程序能够使用基类的指针或引用来检查着这些指针或引用所指的对象的实际派生类型。

有时我们需要将一个多态指针转换为其实际指向对象的类型，就需要知道运行时的类型信息，这就产生了运行时类型识别的要求。和Java相比，C++要想获得运行时类型信息，只能通过RTTI机制，并且C++最终生成的代码是直接与机器相关的。

RTTI提供了两个非常有用的操作符：typeid和dynamic_cast。

typeid操作符，返回指针和引用所指的实际类型；

当typeid中的操作数是如下情况之一时，typeid运算符指出操作数的静态类型，即编译时的类型。

（1）类型名

（2）一个基本类型的变量

（3）一个具体的对象

（4）一个指向不含有virtual函数的类对象的指针的解引用

（5）一个指向不含有virtual函数的类对象的引用

当typeid中的操作数是如下情况之一时，typeid运算符需要在程序运行时计算类型，因为其操作数的类型在编译时期是不能被确定的。

（1）一个指向含有virtual函数的类对象的指针的解引用

（2）一个指向含有virtual函数的类对象的引用

dynamic_cast操作符，将基类类型的指针或引用安全地转换为其派生类类型的指针或引用。

对于多态性的对象，无法在程序编译阶段确定对象的类型。当类中含有虚函数时，其基类的指针就可以指向任何派生类的对象，这时就有可能不知道基类指针到底指向的是哪个对象的情况，类型的确定要在运行时利用运行时类型标识做出。为了获得一个对象的类型可以使用typeid函数，该函数反回一个对type_info类对象的引用

在多重继承和虚拟继承的情况下，一个类有n（n>1）个虚函数表，该类的对象也有n个vptr，分别指向这些虚函数表，但是一个类的所有的虚函数表的索引为-1的项的值（type_info对象的地址）都是相等的，即它们都指向同一个type_info对象，这样就实现了无论使用了哪一个基类的指针或引用指向其派生类的对象，都能通过相应的虚函数表获取到相同的type_info对象，从而得到相同的类型信息。

![a](https://img-blog.csdnimg.cn/20190811155549949.PNG?x-oss-process=image/watermark,type_ZmFuZ3poZW5naGVpdGk,shadow_10,text_aHR0cHM6Ly9ibG9nLmNzZG4ubmV0L3FxXzI2ODk2MjEz,size_16,color_FFFFFF,t_70)

RTTI的应用

如果有一个类层次，希望为它实现“==”操作符。

```cpp
class Base
{
    friend bool operator==(const Base&, const Base&);
public:
    // interface members for Base
protected:
    virtual bool equal(const Base&) const;
    // data and other implementation members of Base
};

bool Base::equal(const Base &rhs) const
{
    // do whatever is required to compare to Base objects
}

class Derived: public Base
{
    friend bool operator==(const Base&, const Base&);
public:
    // other interface members for Derived
private:
    bool equal(const Base&) const;
    // data and other implementation members of Derived
};

bool Derived::equal(const Base &rhs) const//Derived::equal()中的dynamic_cast强制转换是必要的。因为要比较派生类的成员，必须将操作数Base &转换为Derived类型。
{
    if (const Derived *dp = dynamic_cast<const Derived *>(&rhs))
    {
        // do work to compare two Derived objects and return result
    }
    else
        return false;
}

bool operator==(const Base &lhs, const Base &rhs)
{
    // returns false if typeids are different otherwise
    // returns lhs.equal(rhs)
    return typeid(lhs) == typeid(rhs) && lhs.equal(rhs);//如果操作数类型不同，操作符就返回假；如果操作数类型相同，就将实际比较操作数的工作委派给适当的虚函数equal。
}
```

## 运算符重载

### 基本(3)

运算符重载其实就是定义一个函数，在函数体内实现想要的功能，当用到该运算符时，编译器会自动调用这个函数。也就是说，运算符重载是通过函数实现的，它本质上是函数重载。

```cpp
运算符重载的格式为：
返回值类型 operator 运算符名称 (形参表列){
    //TODO:
}
```

```cpp
complex complex::operator+(const complex &A)const{
    return complex(this->m_real + A.m_real, this->m_imag + A.m_imag);
}
```

执行c3 = c1 + c2;语句时，编译器检测到+号左边（+号具有左结合性，所以先检测左边）是一个 complex 对象，就会调用成员函数operator+()，也就是转换为下面的形式：
c3 = c1.operator+(c2);

c1 是要调用函数的对象，c2 是函数的实参。

注意事项：

- 并不是所有的运算符都可以重载。能够重载的运算符包括：
  
```cpp
- +  -  *  /  %  ^  &  |  ~  !  =  <  >  +=  -=  *=  /=  %=  ^=  &=  |=  <<  >>  <<=  
>>=  ==  !=  <=  >=  &&  ||  ++  --  ,  ->*  ->  ()  []  new  new[]  delete  delete[]
//长度运算符sizeof、条件运算符: ?、成员选择符.和域解析运算符::不能被重载。
```

- 重载不能改变运算符的优先级和结合性。

- 重载不会改变运算符的用法，原有有几个操作数、操作数在左边还是在右边，这些都不会改变。例如~号右边只有一个操作数，+号总是出现在两个操作数之间，重载后也必须如此。

- 运算符重载函数**不能有默认的参数**，否则就改变了运算符操作数的个数，这显然是错误的。

- 运算符重载函数大都既可以作为类的成员函数，也可以作为全局函数,但*箭头运算符->、下标运算符[ ]、函数调用运算符( )、赋值运算符=只能以成员函数的形式重载*。

- 将运算符重载函数作为类的成员函数时，二元运算符的参数只有一个，一元运算符不需要参数。之所以少一个参数，是因为这个参数是隐含的(好让编译器区分这是程序员自定义的运算符，防止程序员修改用于内置类型的运算符的性质。)
  
- 作为全局函数时，如果有两个参数，这两个参数可以都是对象，也可以一个是对象，一个是C ++内置类型的数据，例如：

### 实例

```cpp
complex operator+(int a, complex &c){//a+c，c+a都可以被重载
    return complex(a+c.real, c.imag);//返回一个临时对象
}
```

对于二元运算符，全局函数的重载满足交换律，而只有一个参数的成员函数不满足。

```cpp
返回值类型 & operator[] (参数);
const 返回值类型 & operator[] (参数) const;//数组元素为const
```

```cpp
Complex &operator=(const Complex &A); 
//可以加引用限定符保证只能对可修改的左值赋值
//operator=() 的返回值类型设为引用，这样不但能够避免在返回数据时调用拷贝构造函数，还能够达到连续赋值的目的
//特别的，在gcc下返回一个临时对象并不会调用拷贝构造函数，RVO（return value optimization），被gcc进行值返回的优化了，通过对g++增加选项-fno-elide-constructors可以将RVO优化关闭，
```

cout 是 ostream 类的对象，cin 是 istream 类的对象，要想达到这个目标，就**必须以全局函数（友元函数）的形式重载\<<和\>>**，否则就要修改标准库中的类

```cpp
istream & operator>>(istream &in, complex &A){//返回 istream 类对象的引用，是为了能够连续读取复数
    in >> A.m_real >> A.m_imag;
    return in;
}
ostream & operator<<(ostream &out, complex &A){
    out << A.m_real <<" + "<< A.m_imag <<" i ";
    return out;
}
```

```cpp
friend  std::istream &operator>>(std::istream &in, Complex &A);
   friend std::ostream &operator<<(std::ostream &out,const Complex &A);//不加const则无法输出右值
```

```cpp

stopwatch stopwatch::run(){
    ++m_sec;
    if(m_sec == 60){
        m_min++;
        m_sec = 0;
    }
    return *this;
}
stopwatch& stopwatch::operator++(){
    return run();
}
stopwatch stopwatch::operator++(int n){//参数n是没有任何意义的，它的存在只是为了区分是前置形式还是后置形式,不能返回引用
    stopwatch s = *this;
    run();
    return s;
}
```

```cpp
Matrix<T> Matrix<T>::operator*=(const Matrix &m)
{
    return *this = *this * m;//借用重载的*
}
```

```cpp
以成员函数的形式重载 new 运算符：
void * className::operator new( size_t size ){
    //TODO:
}

以全局函数的形式重载 new 运算符：
void * operator new( size_t size ){ 
    //TODO:
}

//delete类似，只是参数变成了void *ptr
}
```

### 成员访问运算符

*的重载很简单，行为没有什么限制

重载箭头运算符时，可以改变的是从哪个对象获取成员，但不能改变获取成员这一事实，也就是无论如何都要获取一个成员

对于内置指针类型调用->会调用内置的箭头运算符

如果调用箭头运算符的是一个重载了箭头的对象，则会对获取(返回的)的对象继续调用箭头运算符，根据目标是指针还是对象决定调用哪个箭头运算符

所以重载的箭头运算符必须返回类的指针(调用内置类型)或者一个重载了箭头运算符的类(调用重载类型)，其它情况都会导致调用过程出现错误

```cpp
const Entity* operator->()const
{
    return m_obj;//返回指向本类的指针
}
Entity e,*pe;
e->func();
pe->func();//they are equal,注意如果重载函数是const的则func也需要是const的,仅作为演示
//一般用来使用在一个自定义的指针类，通过指针类重载箭头实现像内置指针的操作
```

```cpp
//箭头运算符获取公有成员偏移量
int offset =(int)&((Entity*)nullptr)->member;//类的首地址是nullptr，其成员的地址就是偏移量
```

### 类型转换重载，隐式转换风险以及explicit

必须定义为类的成员函数,一般定义为const

```cpp
  operator double() const{ return real; }  //重载强制类型转换运算符 double
  //(double)c等价于c.operator double()
```

[隐式转换详解](https://www.cnblogs.com/apocelipes/p/14415033.html)

```cpp
std::string s = "hello c++";
//C++11之前会创建两个string(复制拷贝)，C++11可能一个可能两个(移动拷贝)(复制省略可选)，C++17开始只有一个(强制复制省略)
```

数组传进函数后隐式转换为指针会丢失长度发生退化，可以借助模板或用array解决。

一个隐式类型转换序列包括一个初始标准转换序列、一个用户定义转换序列、一个第二标准转换序列

转换序列最少可以转换1次，最多可以三次，唯一会触发问题的是出现了两次用户定义转换。

```cpp
A(int i){}
f(A){}
f(1);//这时会先调用拷贝初始化，相当于将int隐式转换成A,而不会报错，如果要避免而不是利用这种情况，各种单参的构造函数都应声明为显式，例如参数为int和double，一个不声明就会调用没有声明的那个
//explicit只需在声明处加入
//如果既提供了将算数类型转换为类类型的初始化函数，又重载了将类类型转换为算数类型的类型转换符，就会遇到二义性问题
1+x;//如果x是类，那么就会有向上转1和向下转x两种可能的方式
explicit A(int i){}//这样可以避免拷贝初始化
 explicit operator double() const{ return real; }//避免意外的隐式转换
 //只能显式转换
 //不是特别看重安全的化一般不加，可以利用其特性简便的构造或返回对象。
```

### 四种类型转换

由于不受限制的显式类型转换允许将任何指针转换为任何其他指针类型，而不依赖于指针所指向的类型，依然存在风险，所以C++引入四种类型转换。

dynamic_cast

dynamic_cast依赖于RTTI信息

```cpp
dynamic_cast < type-id > ( expression )
B * pb = dynamic_cast<B *>(pa);
C &c = dynamic_cast<C&>(a);
/*The type-id must be a pointer or a referenceto a previously defined class type or a "pointer to void".The type of expression must be a pointer if type-id is a pointer, or an l-valueif type-id is a reference*/
//如果type-id是interior类型，The cast will now return the 0 pointer value instead of throwing.
//任意的expression都可以转成void*,type-id始终可以是void*。
```

if type-id is a pointer to an unambiguous accessible direct or indirect baseclass of expression ,a pointer to the uniquesubobject of type type-id
派生类的指针转为基类指针， "upcast"，可以隐式完成，用dynamic_cast会有额外的开销，它的主要目的是实现safe的downcast
子类对象占用的内存空间大于父类对象，因此子类的指针或引用可访问的内存范围更大

a run-timecheck is made to see if expression actually points to a **complete object** of the type of type-id . If this is true, the result is a pointer to a complete object of the type of type-id .
原理是单继承中某个派生类(完全类)的直接或间接基类指针都可以安全的指向它。

```cpp
D* pd = dynamic_cast<D*>(pb); // ok: pb actually points to a D 
D* pd2 = dynamic_cast<D*>(pb2); // pb2 points to a B not a D,转换失败，pb2维持原状，pd2是 nullptr
```

多继承情况下为了避免二义性，需要选择合适的路径进行转换，具体参见微软官方文档的栗子

转换目标是指针类型时若转换失败则返回0，若是引用类型则抛出bad_cast错误，因为不存在空引用。

```cpp
Blob<T> &CastTest(DeriveBlob<T> &d)
{
    Blob<T> tmp;
    Blob<T> &b =tmp;//不能 
    try
    {
        b = dynamic_cast<Blob<T> &>(d); //内部定义的变量对外部不可见
    }
    catch (const std::bad_cast bad)
    {
        std::cerr << "Caught:" << bad.what() << std::endl;
    }
    return b;
}
```

static_cast

类似于C风格的强制转换。无条件转换,但是在编译时会进行类型检查及时报错，**无关指针之间不能转换**，无关类型之间转换(double->int)将使编译器**不会发出警告**.

**no run-time type check** is made to help ensure the safety of the conversion.

The static_cast operator can be used for operations such as converting a pointer to a base class to a pointer to a derived class.Such conversions are **not always safe**.

Although dynamic_cast conversions aresafer, dynamic_cast only works on pointers or references,and therun-timetypecheck is an overhead.不安全(maybe generate disastrous things)，但是范围广

If pb points to an object of type B and not to the complete D class, then dynamic_cast will know enough to return zero. However, static_cast relies on the programmer's assertion that pb points to an object of type D and simply returns a pointer to that supposed D object

Dueto the danger of performing unchecked casts on top of a relocating garbagec ollector, the use of static_cast should only bein performance-critical code when you are **certain it will work correctly**. If you must use static_cast in release mode, substituteit with safe_cast in your debug builds to ensure success.

```cpp
D* pd2 = static_cast<D*>(pb); // Not safe, D can have fields // and methods that are not in B.
B* pb2 = static_cast<B*>(pd); // Safe conversion, D always // contains all of B.
ch = static_cast<char>(i); // int to char 
dbl = static_cast<double>(f); 
i = static_cast<BYTE>(ch); // float to double
return static_cast<typename remove_reference<T>::type&&>(t);//std::move原理，static_cast将左值转换为右值引用
```

const_cast

Removes the const , volatile ,and __unaligned attribute(s) from（属于） a class.

只能转换指针，实现类似与用指针修改const变量的方式，但没有声明volatile，不会改变原变量

You cannot use the const_cast operator to directly overridea constantvariable's constant status//被转换的变量值并不会被改变。

对于const数据始终要保证不对const数据进行重新赋值。

```cpp
const_cast< CCTest * >( this )->number--;//number最终还是原值
int *p=&constant;//错误，对于常量必须在前面加const限定符,除非将右边强制类型转换，但这样是不安全的
int* modifier = const_cast<int*>(&constant);
*modifier = 7;// undefined behavior(未定义不代表结果不可知，未定义行为是指执行某种计算机代码所产生的结果，这种代码在当前程序状态下的行为在其所使用的语言标准中没有规定。常见于翻译器对源代码存在某些假设，而执行时这些假设不成立的情况。不通用，可视为bug)
int i = 3;                 // i is not declared const
 const int& rci = i; //&改为*也成立，只要最初的变量不是const就可以正常修改
 const_cast<int&>(rci) = 4; // OK: modifies i
 std::cout << "i = " << i << '\n';
//还有一个用法是将const变量指针转换为非const指针，使其能作为函数参数，前提是已知函数不会修改变量的值
```

reinterpret_cast Operator

reinterpret_cast is a mandatory type conversion character in C ++.

极不安全，在编写黑客程序、病毒或反病毒程序时，也许会用到这样怪异的转换。

只有将转换后的类型值转换回到其原始类型，这样才是正确使用reinterpret_cast方式。

随意将一个类型值的比特位交给另一个类型作为它的值，**但指针转换为其他类型时不能造成精度损失**。

long long 可以转为int或int*(用强制类型转换可能会警告)，int \*不能转为int(强制类型转换也不能通过).

```cpp
int j;
 intptr_t k=reinterpret<intptr_t>(&j);//这样可以将指针转换为整数，适应全平台intptr_t k=(intptr_t)(&j)
 //64位机上int_64,long,long long也都行
   
```

Allows any pointer to be converted into any other pointer type. Also allows any integral typeto be converted into any pointer type and vice versa（反之亦然）

The reinterpret_cast operator can be used for conversions such as char\* to int\* , or One_class\* to Unrelated_class\* , which areinherently unsafe.

可用这四种类型转换代替C风格的强制类型转换，dynamic_cast最安全，但范围受限且占用资源最多，static_cast用于确保安全的情况，reinterpret一般不要用，除非需要特殊用法。

### 函数调用运算符(仿函数)

如果类重载了调用运算符，则称该类的对象为函数对象

lambda表达式是函数对象(匿名)

```cpp

auto f =[sz](const string s){return s};
f相当于:
class{
    public:
   string operator()(const string s)
   {
       return s;
   }
   private:
   size_t sz;
}
//引用捕获时不会构造变量
//不含默认构造函数，赋值运算符，及默认 析构函数，是否具有拷贝/移动函数视捕获的数据元素而定


```

![标准库函数对象](https://i.loli.net/2021/10/17/5QxmJjVZ1oc7ODw.png)

```cpp
//比较指针大小
vector<string*>vec;
sort(vec.begin(), vec.end(),[](string* a, string* b){return a<b};);//错误，<将产生未定义的行为
sort(vec.begin(), vec.end(),less<string*>());
```

不同的类型(例如普通函数，lambda表达式和函数对象)可能具有相同的调用形式，只要它们的参数类型和返回类型完全一致，例如int(int,int);

可以定义一个函数表将它们存储在一起

```cpp
int add(a,b){return a+b;}
map<string,int(*)(int,int))>binops;
binops.insert({'+',add}); //pair
//但lambda函数没有函数名，不符合map的元素类型
```

![function类](https://i.loli.net/2021/10/17/AGBpg26UqsKalI8.png)

```cpp
function<int(int,int)>f1=add;//函数指针
function<int(int,int)>f2=devide();//函数对象类的对象
function<int(int,int)>f3=[](int i,int j){return i*j;};//lambda
std::cout<<f1(1,2)<<f2(1,2)<<f3(1,2);

重新定义map；
map<string,function<int(int,int)>> binops=
{
    .....//各种函数对象，lambda表达式等。
}
binops['+'](10,10);//调用add(10,10);//
当函数发生重载时，可以用函数指针
int(*fp) (int,int)=add;

```

## 异常处理

### 基本(4)

程序的错误大致可以分为三种，分别是语法错误、逻辑错误和运行时错误：

1) 语法错误在编译和链接阶段就能发现，只有 100% 符合语法规则的代码才能生成可执行程序。语法错误是最容易发现、最容易定位、最容易排除的错误，程序员最不需要担心的就是这种错误。

2) 逻辑错误是说我们编写的代码思路有问题，不能够达到最终的目标，这种错误可以通过调试来解决。

3) 运行时错误是指程序在运行期间发生的错误，例如除数为 0、内存分配失败、数组越界、文件不存在等。C++ 异常（Exception）机制就是为解决运行时错误而引入的。

运行时错误如果放任不管，系统就会执行默认的操作，终止程序运行，也就是我们常说的程序崩溃（Crash）。C++ 提供了异常（Exception）机制，让我们能够捕获运行时错误，给程序一次“起死回生”的机会，或者至少告诉用户发生了什么再终止程序。

可以通过捕获异常防止程序奔溃

```cpp
try{
    // 可能抛出异常的语句
}catch(exceptionType variable){
    // 处理异常的语句
    }
     /*语句块内部*/   //注意其局部作用域
    try{
        int a = 0;
    }catch(Exception e){
        int b = 0;
    }finally{
        int c = 0;
    }
    /*语句块外部*/       
    //a = 5;    //非法，编译器无法识别该变量
    //b = 5;    //非法，编译器无法识别该变量
    //c = 5;    //非法，编译器无法识别该变量


```

try和catch都是 C++ 中的关键字，后跟语句块，不能省略{ }。try 中包含可能会抛出异常的语句，一旦有异常抛出就会被后面的 catch 捕获。从 try 的意思可以看出，它只是“检测”语句块有没有异常，如果没有发生异常，它就“检测”不到。catch 是“抓住”的意思，用来捕获并处理 try 检测到的异常；如果 try 语句块没有检测到异常（没有异常抛出），那么就不会执行 catch 中的语句。

```cpp
 try{
        char ch1 = str[100];
        cout<<ch1<<endl;
    }catch(exception e){
        cout<<"[1]out of bound!"<<endl;
    }
    try{
        char ch2 = str.at(100);
        cout<<ch2<<endl;
    }catch(exception &e){  //exception类位于<exception>头文件中
        cout<<"[2]out of bound!"<<endl;
    }
    //运行结果：
(
[2]out of bound!

```

[ ]不会检查下标越界，不会抛出异常，所以即使有错误，try 也检测不到。换句话说，**发生异常时必须将异常*明确地*抛出，try 才能检测到**；如果不抛出来，即使有异常 try 也检测不到。所谓抛出异常，就是明确地告诉程序发生了什么错误。

检测到异常后程序的执行流会发生跳转，从异常点跳转到 catch 所在的位置，**位于异常点之后的、并且在当前 try 块内的语句就都不会再执行了**.

执行完 catch 块所包含的代码后，程序会继续执行 catch 块后面的代码，就恢复了正常的执行流。

```cpp
void func_inner(){
    throw "Unknown Exception";  //抛出异常
    //        throw std::out_of_range("Out Of Range");//调用terminate并显示字符串
    cout<<"[1]This statement will not be executed."<<endl;
}
void func_outer(){
    func_inner();
    cout<<"[2]This statement will not be executed."<<endl;
}
int main(){
    try{
        func_outer();
        cout<<"[3]This statement will not be executed."<<endl;
    }catch(const char* &e){
        cout<<e<<endl;
    }

```

发生异常后，程序的执行流会沿着函数的调用链往前回退，直到遇见 try 才停止。在这个回退过程中，调用链中剩下的代码（所有函数中未被执行的代码）都会被跳过，没有执行的机会了。

**处理构造初始值异常的唯一方法是将构造函数写成try语句块**，与try关联的catch既能处理构造函数抛出的异常，也能处理成员初始化列表时抛出的异常，但初始化构造函数的参数时发生的异常不属于try语句块的一部分。

### catch

catch(exceptionType variable)//异常声明

只有跟 exceptionType 类型匹配的异常数据才会被传递给 variable，否则 catch 不会接收这份异常数据，也不会执行 catch 块中的语句。换句话说，catch 不会处理当前的异常。

**不支持算数转换**：例如 int 转换为 float，char 转换为 int，double 转换为 int 等，但**支持const 转换**：也即将非 const 类型转换为 const 类型，例如将 char \* 转换为 const char \*和**向上转型以及数组或函数转换**。

可以将 catch 看做一个没有返回值的函数，当异常发生后 catch 会被调用，并且会接收实参（异常数据）。

对于 catch，异常是在运行阶段产生的，它可以是任何类型，没法提前预测，所以不能在编译阶段判断类型是否正确，只能等到程序运行后，真的抛出异常了，再将异常类型和 catch 能处理的类型进行匹配，匹配成功的话就“调用”当前的 catch，否则就忽略当前的 catch。

也可以将 variable 省略掉，这样只会将异常类型和 catch 所能处理的类型进行匹配

多级匹配

```cpp
try{
    //可能抛出异常的语句类型转换
}catch (exception_type_1 e){
    //处理异常的语句
}catch (exception_type_2 e){
    //处理异常的语句
}
//其他的catch
catch (exception_type_n e){
    //处理异常的语句
}
```

```cpp
 try{
        throw Derived();  //抛出自己的异常类型，实际上是创建一个Derived类型的匿名对象
        cout<<"This statement will not be executed."<<endl;
    }catch(int){
        cout<<"Exception type: int"<<endl;
    }catch(char *){
        cout<<"Exception type: cahr *"<<endl;
    }catch(Base){  //匹配成功（向上转型）
        cout<<"Exception type: Base"<<endl;
    }catch(Derived){
        cout<<"Exception type: Derived"<<endl;
    }
    //运行结果：
Exception type: Base
//异常提前被catch(Base)捕获了，这说明 catch 在匹配异常类型时发生了向上转型（Upcasting）。
/*为了避免向上转型，应该将继承链最底端的类(most derived type)放在最前面的catch，最顶端的(least derived type)放在最后*/
```

需要注意的是**异常声明的静态类型决定了catch所能执行的操作**，如果参数是基类类型则它无法使用派生类的特有成员，如果需要使用则应声明为引用

捕获所有异常(catch-all)

```cpp
void manip()
{
    try()
    {
        //...
    }
    catch(...) {//放在最前面对所有的异常作处理后再抛出
        //...
        throw；//不加后面的语句将不会被执行
    }
    catch(exceptionType variable){

    }

    
}

void manip()
{
    try{
    // ...
} catch (const std::exception& ex) {
    // ...
} catch (const std::string& ex) {
    // ...
} catch (...) {//放在最后以监测意外的异常
    // ...
}
 
}

```

当一个函数里面抛出异常时，如果抛出的异常没有在该函数里面找到相应的catch处理模块，这个时候在抛出异常前的那些局部变量就开始销毁，最后整个函数调用的栈帧也被销毁。异常就到了调用该函数的去找catch处理模块，如果也没有 那么一样要销毁该调用函数的栈帧。就这样一层层的往外推。这样的一个过程就是**栈展开**了。过程中创建的局部对象也会被销毁。对于类类型，它们的析构函数执行时不应抛出异常，如果抛出异常但未被自身捕获，程序就会终止。

如果最终没有找到相应的catch就会**调用标准库terminate函数终止程序**。

### throw exceptionData

exceptionData 是“异常数据”的意思，它可以包含任意的信息，完全有程序员决定。exceptionData 可以是 int、float、bool 等基本类型，也可以是指针、数组、字符串、结构体、类等聚合类型

异常规范

```cpp

double func (char param) throw (int);
double func (char param) throw (int, char, exception);//多种异常
double func (char param) throw ();//不抛出异常
```

C++ 规定，派生类虚函数的异常规范必须与基类虚函数的异常规范一样严格，或者更严格。只有这样，当通过基类指针（或者引用）调用派生类虚函数时，才能保证不违背基类成员函数的异常规范。可抛出的异常数据类型越少越严格

异常规范在函数声明和函数定义中必须同时指明，并且要严格保持一致，不能更加严格或者更加宽松。

异常规范的初衷是好的，它希望让程序员看到函数的定义或声明后，立马就知道该函数会抛出什么类型的异常，这样程序员就可以使用 try-catch 来捕获了。如果没有异常规范，程序员必须阅读函数源码才能知道函数会抛出什么异常。

不过这有时候也不容易做到。例如，func_outer() 函数可能不会引发异常，但它调用了另外一个函数 func_inner()，这个函数可能会引发异常。再如，您编写的函数调用了老式的库函数，此时不会引发异常，但是库更新以后这个函数却引发了异常。总之，异常规范的初衷实现起来有点困难，所以大家达成的一致意见是，最好不要使用异常规范。

异常规范是 C++98 新增的一项功能，但是后来的 C++11 已经将它抛弃了，**不再建议使用**。

**抛出表达式的类型取决于其静态编译时类型**，例如一个指向派生类的基类指针在抛出解引用时将抛出其基类部分。

rethrowing 操作:在catch执行语句最后加上一条"throw;"，异常声明是引用时会保留对参数的修改，否则等同于多级匹配。

### exception类

C++语言本身或者标准库抛出的异常都是 exception 的子类，称为标准异常（Standard Exception）。

```cpp
try{
    //可能抛出异常的语句
}catch(const  exception &e){//使用引用，是为了提高效率
    //处理异常的语句
    cerr<< e.what() << endl;//输出异常类型 ,cout也可以
    /*cerr对应标准错误流，用于显示错误消息。默认情况下被关联到标准输出流，但它不被缓冲，也就说错误消息可以直接发送到显示器，而无需等到缓冲区或者新的换行符时，才被显示。一般情况下不被重定向。*/
}
```

```cpp
class exception{
public:
    exception () throw();  //构造函数
    exception (const exception&) throw();  //拷贝构造函数
    exception& operator= (const exception&) throw();  //运算符重载
    virtual ~exception() throw();  //虚析构函数
    virtual const char* what() const throw();  //虚函数
}
```

它的继承层次

![114Q24150-0.jpg](https://i.loli.net/2021/10/15/meb1Ea8ZzQkT9FI.jpg)

```cpp
Blob<T>::Blob(std::initializer_list<T> il)
try : data(std::make_shared<std::vector<T>>(il))
{
}
catch (const std::bad_alloc &e)
{
    handle_out_of_memory(e);
}
void handle_out_of_memory(const std::exception &e)
    {
        std::cerr << e.what() << std::endl;
    }
```

### noexcept

指定符

```cpp
void func()noexcept;//不会抛出异常，func做了不抛出说明(nothrowing specification)
void func()noexcept{ //声明和定义时都要出现
    //
}
```

C++17以后它不属于函数说明符的一部分。
位置限制:在尾置返回类型之前，不能出现在typedef或类型别名中，在成员函数中应出现在const和引用限定符之后，而在final,override,和=0之前。

```cpp
   void func()const & noexcept final()=0;
void g(void pfa() noexcept);  // g 接收指向不抛出的函数的指针
// typedef int (*pf)() noexcept; // 错误
```

如果一个函数做了不抛出说明却包含了throw函数或其它可能抛出异常的函数，那么它会顺利通过编译期，但运行时抛出的异常还是会使程序调用terminate.

所以noexcpt既可以用来承诺函数不会抛出异常，也可以用在我们不知道如何处理异常的情况；

noexcpt(true)等同于noexcpt,noexcpt(false)（等同于不加）表示可能抛出异常,后者可用来标记较有可能抛出异常的函数

特别的，noexcpt(false)可使析构函数(noexcpt(true)，较新版本)变成可能抛出异常。

```cpp

int main()
{
    X x;

    // This will not fire even in GCC 4.7.2 if the destructor is
    // explicitly marked as noexcept(true)
    static_assert(noexcept(x.~X()), "Ouch!");
}
/*static_assert用来做编译期间的断言，因此叫做静态断言,如果第一个参数常量表达式的值为真(true或者非零值)，那么不做任何事情，就像它不存在一样，否则会产生一条编译错误，错误位置就是该static_assert语句所在行，错误提示就是第二个参数提示字符串。*/
```

more effective c++提出两点理由（析构函数不能抛出异常的理由）：

1）如果析构函数抛出异常，则异常点之后的程序不会执行，如果析构函数在异常点之后执行了某些必要的动作比如释放某些资源，则这些动作不会执行，会造成诸如资源泄漏的问题。

2）通常异常发生时，c++的机制会调用已经构造对象的析构函数来释放资源，此时若析构函数本身也抛出异常，则前一个异常尚未处理，又有新的异常，会造成程序崩溃的问题。

析构函数中抛出异常时概括性总结

1）C++中析构函数的执行不应该抛出异常；

2）假如析构函数中抛出了异常，那么你的系统将变得非常危险，也许很长时间什么错误也不会发生；但也许你的系统有时就会莫名奇妙地崩溃而退出了，而且什么迹象也没有，崩得你满地找牙也很难发现问题究竟出现在什么地方；

3）当在某一个析构函数中会有一些可能（哪怕是一点点可能）发生异常时，那么就必须要把这种可能发生的异常完全封装在析构函数内部，决不能让它抛出函数之外（通过catch，可以什么都不做）；

4）一定要切记上面这几条总结，析构函数中抛出异常导致程序不明原因的崩溃是许多系统的致命内伤！ 

做了不抛出声明的函数指针只能指向做了不抛出声明的函数，如果虚函数承诺了不抛出异常，则后续派生的虚函数也必须做相同的承诺

运算符

Returns a prvalue(纯右值) of type bool.

```cpp
noexcpt(func(i)):当func(i)调用的所有函数都承诺了不抛出异常且它本身不包含throw语句时表达式为真
void  f() noexcept(noexcpt(g()))//f和g的异常说明一致
```

## 动态内存与智能指针

\<memory\>

### allocator类

将内存分配与对象分离开。new默认会初始化内存，也可以指定再进行值初始化。

```cpp
allocator<T>  a;
a.allocate(n);//分配一段原始的内存并返回指针
a.deallocate(p,n);//从p开始释放n个对象的内存，p是allocate返回的指针被释放的对象须事先调用destory();
a.construct(p,args);//p指向一块原始内存，args为转发给对象构造函数的参数
a.destory(p);//为p指向的对象调用析构函数
```

```cpp
allocator<std::string> alloc;
auto p=alloc.allocate(10);
auto q=p;
//q指向最后构造的元素之后的位置
alloc.construct(q++);//空字符串
alloc.construct(q++,5,'1');//"11111"
alloc.construct(q++,"lala");
while(p!=q)
alloc.destroy(--q);//ro,not or
alloc.deallocate(p,10);
```

拷贝和填充未初始化的内存

```cpp
uninitialized_copy(b,e,b2);//迭代器b到e到b2，b2必须指向未构造的空间(allocate或malloc分配的，返回最后一个构造的元素之后位置的迭代器
uninitialized_copy(b,n,b2);//b开始n个
// constructs the objects in-place, instead of just copying the value to them
uninitialized_fill(b,e,t);//用t的拷贝填充
uninitialized_fill_n(b,n,t);
```

```cppshasdfdctor<int> vi={1,2,3,4,5};
auto p=allc.allocate(vi.size()*2);
auto q=uninitialized_copy(vi.begin(),vi.end(),p);
uninitialized_fill_n(p,vi.size(),1);
```

智能指针可以自动释放分配的动态内存，

### shared_ptr类

shared_ptr允许多个指针指向同一个对象

![ok.png](https://i.loli.net/2021/10/16/7RclBHq5yDGtUTF.png)

为了避免内存泄漏，**通过智能指针管理的对象应该没有其他的引用指向它们**。换句话说，指向动态分配存储的指针应该立即传递给智能指针构造函数，而不能先将它赋值给指针变量。

引用计数为0则将调用析构函数释放内存。

```cpp
//应该避免这样
int *p = new int;
unique_ptr<int> uptr(p);

/*C++11 标准还支持同一类型的 shared_ptr 对象，或者 shared_ptr 和 nullptr 之间，进行 ==，!=，<，<=，>，>= 运算。*/

auto q=p.get();//返回智能指针内部包含的普通指针(The stored pointer.)，传递给不能使用智能指针的函数或代码
//不能用它初始化智能指针，这样做会使两个智能指针指向一块内存而各自的引用计数都是1，出现对象被销毁而一个指针悬空导致未定义行为或重复delete
//if(p)==if(p.get())==if((bool)p),始终是成立的
shared_ptr<string>p//空指针,可以根据是否为空判断智能指针是否分配了空间
shared_ptr<string>p(new string);
shared_ptr<string>=new string//是错误的，除了直接初始化外不能隐式转换内置指针和智能指针
 std::shared_ptr<int>p;//这样也可以，相当于创建了一个临时的智能指针
    p=std::shared_ptr<int>(new int(10));
shared_ptr<string>p=make_shared<string>(10,'1');//make_shared构造相当于同类赋值可以随意搭配，单独赋值也可以
auto q(make_shared<string>());//也可以用auto代替shared_ptrshared
```

[尽量使用make_shared初始化](https://www.jianshu.com/p/03eea8262c11)

```cpp
//调用拷贝构造函数,p3引用计数加一,p4引用计数减一(如果p3不为空)
std::shared_ptr<int> p4(p3);//或者 std::shared_ptr<int> p4 = p3;
//调用移动构造函数//p4变为空指针
std::shared_ptr<int> p5(std::move(p4)); //或者 std::shared_ptr<int> p5 = std::move(p4);
p5.reset();//置空，及时释放空间(而不是等待出作用域)可以减少内存浪费
p5.reset(new int(20));//改变指向
```

对于申请的动态数组来说，shared_ptr 指针默认的释放规则是不支持释放数组的，只能自定义对应的释放规则，才能正确地释放申请的堆内存。

```cpp
//指定 default_delete 作为释放规则
std::shared_ptr<int> p6(new int[10], std::default_delete<int[]>());
//自定义释放规则
void deleteInt(int*p) {
    delete []p;
}
//初始化智能指针，并自定义释放规则
std::shared_ptr<int> p7(new int[10], deleteInt);
std::shared_ptr<int> p7(new int[10], [](int* p) {delete[]p; });//推荐

shared_ptr不支持下标运算符和指针的算数运算

*(p7.get()+i);
```

让不同成员共享相同的底层数据

```cpp
关键部分：
std:shared_ptr<std::vector<string>> data;
StrBlob::StrBlob():data(make_shared<vector<string>>()){}
StrBlob::StrBlob(initializer_list<string> il):data(make_shared<vector<string>>(il)){}
//使用默认拷贝，赋值，和析构成员函数
```

在确认自己是独占的情况下修改

```cpp
if(!p.unique())
p.reset(new string (*p));//不是唯一用户则分配新的拷贝
*p+=newVal;
```

[别名构造函数](https://www.codesynthesis.com/~boris/blog/2012/04/25/shared-ptr-aliasing-constructor/)

```cpp
template <class Y>
shared_ptr (const shared_ptr<Y>& r, T* p) noexcept;//p（stored but not owned)不能被自动释放
//一般用法
struct Bar { 
    // some data that we want to point to
};

struct Foo {
    Bar bar;
};

shared_ptr<Foo> f = make_shared<Foo>(some, args, here);
shared_ptr<Bar> specific_data(f, &f->bar);//第一个参数用于增加f的ref cnt,f->bar是要保存的对象,分别是specific_data的owns和stores
//specific_data.use_count==f.use_count();
//specific_data.get()==&f->bar;
// ref count of the object pointed to by f is 2
f.reset();

// the Foo still exists (ref cnt == 1)
// so our Bar pointer is still valid, and we can use it for stuff
some_func_that_takes_bar(specific_data);
```

The first argument (r) is the pointer with which we will share ownership of object Y. While the second argument (p) is the object which we will actually point to. That is, get() and operator-> will return p, not r. In fact, to understand this better, it is useful to think of shared_ptr as consisting of two parts: **the object that it owns (or, more precisely, shares ownership of) and the object that it stores. When we use other shared_ptr constructors, these two objects are the same (give or take base-derived differences)**. The aliasing constructor allows us to create a shared pointer that has different objects in these two parts. Note also that the stored object is never deleted by shared_ptr. If a shared pointer created with the aliasing constructor goes out of scope, and it is the last pointer owning r, then r is deleted, not p.

null shared_ptr:owns object is null;empty shared_ptr:stroes object is empty;前者针对控制块(own)，后者针对包含的指针(store)，一般情况下控制的就是包含的指针, (控制块会控制其存储指针的生存期. 但是,控制块中存储的指针未必是sharedptr存储的指针).

[null,empty,ptr](https://www.nextptr.com/question/qa1372136808/shared_ptr-initialized-with-nullptr-is-null-or-empty)

Notice that a null shared_ptr (i.e., a pointer for which this function returns false) is not necessarily an empty shared_ptr. An alias may own some pointer but point to null, or an owner group may even own null pointers (see constructors 4 and 5).

```cpp
//Uses default constructor: shared_ptr(); 
std::shared_ptr<int> p1;
//Uses constructor: shared_ptr(std::nullptr_t);
std::shared_ptr<int> p2(nullptr);
int* iptr{nullptr};
std::shared_ptr<int> p3(iptr);//null but not empty
/*Both p1 and p2 are null, but they are empty too because they don't have any control block associated with them. On the other hand, p3 is null but not empty because it has a control block with a managed nullptr and a reference count of 1.*/

int x = 100;
 //'px' holds &x, but is empty.
 //A null and empty shared_ptr<void> is passed 
 //to aliasing constructor to initialize px 
 std::shared_ptr<int> px(std::shared_ptr<void>(), &x); //empty but not null
```

### 直接管理内存

```cpp
int *p =new int[0];//合法，但仍然会分配内存，需要销毁，用在定义数组则非法
vector<string>*ps=new string(10,'1');
vector<int>*pv=new vector<int>{1,2,3,4,5};
//对于类类型默认初始化和值初始化为空是等价的，而对于内置类型，默认初始化后值是随机的
auto p1=new auto(obj);//p1指向和obj类型相同的对象并用obj进行初始化
const int pc= new const int(10);//可以指向const对象，但必须值初始化(内置类型)或隐式初始化(类类型)
int *p=new (nothrow) int;//如果初始化失败则返回空指针而不是抛出std::bad_alloc导致terminate
```

内置类型的对象销毁什么也不会发生。
delete之后最好重置指针值
空悬指针

简单地说，空悬指针是对象的指针的生存周期比对象更长所导致的，也就是说，对象销毁、删除了，不存在了，指针仍然存在，这时这个指针就成了空悬指针。
当对象被析构、删除时，如果指向它的指针没有被同时修改，那么指针仍然会指向那块内存（但是那块内存已经没有东西了）。系统此时可能会重新分配这块已经free掉的内存，如果程序再通过这个指针读这块内存，就可能会有不可预见的事情发生，因为这块内存可能被分配了完全不同的内容。如果程序此时要写这块内存，就可能会造成数据污染，进而可能带来超级难被发现的bug。如果内存已经被其它进程重新分配，此时再去访问指针指向的内容，就可能会发生片段错误(UNIX,Linux)或者一般性保护错误(Windows).如果程序有足够的权限去重写内核内存分配器的内容，还可能造成系统的不稳定。在有垃圾回收机制的面向对象语言中，阻止空悬引用的方法是销毁所有访问不到的对象，也就是说他们也就没有所谓的指针了，这是由追踪或引用计数而确保的。然而finalizer可能会创建新的对象的引用，这就要求对象要再生来防止空悬引用。

野指针作为一个指针，甚至都没有被初始化，也就是说虽然它的类型是一个指针，但它根本没有值。它跟NULL指针还有差别，NULL是指向了0地址，而野指针是没有地址

使用delete难以解决的问题

```cpp
int *p=new int(10);
auto q=p;
delete p;
p=nullptr;
//q必须也置零，但实际中找到执行相同内存的所有指针是困难的
```

使用动态指针可以避免许多使用new和delete的问题

不要混合使用内置指针和智能指针，因为用内置指针访问时不知道对象是否已销毁。

[智能指针陷阱](![oo.png](https://i.loli.net/2021/10/17/xErwU1MgBP6tDdo.png))

### unique_ptr 类

不能改变独占性

```cpp
unique_ptr<int> uptr = make_unique<int>();//C++14以后
unique_ptr<int> uptr1(new int);
unique_ptr<int> uptr2 = uptr1; // 非法初始化
unique_ptr<int> uptr3; // 正确
uptr3 = uptr1; // 非法赋值

uptr3 = move (uptr1) ; // 将所有权从 uptr1 转移到 uptr3，不是std的那个
uptr3.reset(uptr1.release());//等价，单独release会导致指针丢失
//unique_ptr可以引用传参，值传递时可以调用转换所有权的函数，但要保证安全，move返回unique_ptr,release返回内置指针

//可以拷贝或一个将要被销毁的unique_ptr，包括临时的和局部的
unique_ptr<int>  clone(int p)
{
    return unique_ptr<int>(new int p);
}

uptr = nullptr;//这两种方式可以保留指针，同时释放所管理的空间,release不能释放空间
uptr.reset();
```

支持动态数组

```cpp
unique_ptr<int[]> uptr(new int[]len);//注意int[];
unique_ptr<int[]> uptr(make_unique<int[]>(len));
uptr[0]=1;//支持下标运算，可以自动析构,不用传入删除器
```

### weak_ptr

是shared_ptr的伴随类

```cpp
auto p=make_shared<int>(10);
weak_ptr wp(p);//wp弱共享p，引用计数不变

if(shared_ptr<int>np=wp.lock())//不能直接访问，必须调用lock返回一个shared_ptr访问
{
   ...
}//主要用途就是阻止访问不存在的对象

```

## 模板

### 基本(5)

所谓函数模板，实际上是建立一个通用函数，它所用到的数据的类型（包括返回值类型、形参类型、局部变量类型）可以不具体指定，而是用一个虚拟的类型来代替（实际上是用一个标识符来占位），**等发生函数调用时再根据传入的实参来逆推出真正的类型**。这个通用函数就称为函数模板（Function Template）。

模板形参不能为空。

模板的派生类访问基类成员必须显式调用，因为编译第一阶段会忽视与模板相关的，于是会找不到派生类中使用的基类成员变量

```cpp
SeqList<T>::m_array = space;  //法1
//父类是模板可以用this来调用父类成员
        this->length = 0;//法2，这个较为简便
        //把查找延迟到第二阶段，注意两个都不能用在初始化列表里
```

### 函数模板

模板函数应尽量减少对实参类型的要求(也是泛型编程的原则)，除了函数体所使用的语句和函数要注意，还应尽量使用**const引用参数减小复制时间和对参数的要求**(如果确保参数只可能是内置类型可以不用太执着)。

类型模板参数

```cpp
template <typename 类型参数1 , typename 类型参数2 , ...> 返回值类型  函数名(形参列表){
    //在函数体中可以使用类型参数
}
//typename关键字也可以使用class关键字替代，它们没有任何区别。
template<typename T> T max(T a, T b, T c);//声明
//模板的实例
template<typename T>  //模板头，这里不能有分号
T max(T a, T b, T c){ //函数头
    T max_num = a;
    if(b > max_num) max_num = b;
    if(c > max_num) max_num = c;
    return max_num;
}
函数模板声明为inline或constexpr时说明符放在模板参数之后。
template<typename T> inline T max(T a, T b, T c);

//类型可以显式指定，注意定义时函数名中不能出现参数类型列表，而类模板需要参数列表<T>

```

### 非类型(值)模板参数

非类型模板参数，**面对的未加确定的参数细节是指（value），而非类型**。当要使用基于值的模板时，你必须显式地指定这些值，模板方可被实例化。例如vector\<int ,5\>;

可以将非类型参数的类型定义为类型参数：int VAL->T VAL

```cpp
template<typename T, T VAL> 
T addValue(const T& x)
{
    return x+VAL;
}
```

非类型模板参数是有类型限制的。一般而言，它可以是**常整型或者指针或左值引用。(enum声明的内部数据可以作为实参传递给int，但是一般不能当形参).

实参必须是常量表达式(*常量表达式基本上是字面值以及const修饰的变量*)，绑定到指针或引用的实参则必须具有静态的生存期(全局变量，静态变量，外部变量,具体参见C语言word文档),这样可以突破长整型的限制。

| 存储类别     | 存储期 | 作用域 | 链接 | 声明方式                     |
| ------------ | ------ | ------ | ---- | ---------------------------- |
| 自动         | 自动   | 块     | 无   | 块内                         |
| 寄存器       | 自动   | 块     | 无   | 块内，使用关键字register     |
| 静态外部链接 | 静态   | 文件   | 外部 | 所有函数外                   |
| 静态内部链接 | 静态   | 文件   | 内部 | 所有函数外，使用关键字static |
| 静态无链接   | 静态   | 块     | 无   | 块内，使用关键字static       |

特别的，C++17以前，当引用局部静态变量时会报错：‘& x’ is not a valid template argument of type ‘double*’ because ‘x’ has no linkage，说明17以前的gcc编译器是按照是否有链接来确定是否可以作为引用实参的。

```cpp
template<double VAL>            // ERROR： 浮点数不可作为非类型模板参数
template<std::string name>      // ERROR：类对象不能作为非类型模板参数
template <unsigned M, unsigned N>//这种情况编译器能根据字面量推出M和N,unsigned 和unsigned int意义相同,unsigned long gcc上是8字节
int compare(const char (&p)[M], const char (&q)[N])
{
  return strcmp(p, q);
}
std::cout << compare("lalal", "lalal");

template<typename T, int MAXSIZE>
class Stack
{
public:
    Stack():idx(0){}
    bool empty() const { return idx == 0;}
    bool full() const { return idx == MAXSIZE;}
    void push(const T&);
    void pop();
    T& top();
    const T& top() const;
private:
    int idx; 
    T elems[MAXSIZE];
}
template<typename T, int MAXSIZE = 20>//非类型模板参数可以指定缺省值。
class Stack
{
    ...
}
```

从c++17起，可以使用auto推断非类型模板参数：

```cpp
template <auto value> void f() { }

f<10>();      // deduces int

template <typename Type, Type value> //如果没有auto的情况下将非类型模板参数的类型当做模板参数

template<auto Val, typename T = decltype(Val)>//在auto推导的的情况下获取类型：
T foo();

```

### 类模板

```cpp
template<typename 类型参数1 , typename 类型参数2 , …> class 类名{
    //TODO:
};
template<typename 类型参数1 , typename 类型参数2 , …>//类外定义函数
返回值类型 类名<类型参数1 , 类型参数2, ...>::函数名(形参列表){
    //TODO:
}
template<typename T1, typename T2>  //模板头
T1 Point<T1, T2>::getX() const /*函数头*/ {
    return m_x;
}
Point<int, int> p1(10, 20);//实例化使要提供显式模板实参列表
Point<int, float> p2(10, 15.5);
Point<float, char*> p3(12.4, "东经180度");
Point<float, float> *p1 = new Point<float, float>(10.6, 109.3);//赋值号两边都要指明具体的数据类型，且要保持一致
Point<char*, char*> *p = new Point<char*, char*>("东经180度", "北纬210度");
```

在类的作用域之内(**类的定义和外部函数在类名之后的部分**)写类名时**不用写实参列表**。class\<T\>-\>class

仅针对本类，其它同模板类在本类作用域内也要加实参列表.

Local classes are not allowed to have member templates.
Member template functions **cannot be virtual functions** and **can not override virtual functions from a base class when they are declared with the same name as a base class virtual function**.//成员模板函数不是虚函数，也不能重写虚函数

编译器在编译一个类的时候，需要确定这个类的虚函数表的大小。一般来说，如果一个类有N个虚函数，它的虚函数表的大小就是N，如果按字节算的话那么就是4*N。

如果允许一个成员模板函数为虚函数的话，因为我们可以为该成员模板函数实例化出很多不同的版本，也就是可以实例化出很多不同版本的虚函数，那么编译器为了确定类的虚函数表的大小，就必须要知道我们一共为该成员模板函数实例化了多少个不同版本的虚函数。显然编译器需要查找所有的代码文件，才能够知道到底有几个虚函数，这对于多文件的项目来说，代价是非常高的，所以才规定成员模板函数不能够为虚函数。

### 模板编译和强类型，弱类型

**当使用而不是定义模板时，编译器才生成代码。(build的时候可能不会报错，与编译器特性也有关)**。

当使用类类型的对象时，只需要类定义可用即可，所以一般将类定义和函数声明放在头文件中。而**模板定义和函数实现都应该放在头文件里**。

大多关于模板的编译错误在编译的第三个阶段实例化阶段报告。

强类型语言在定义变量时需要显式地指明数据类型，并且一旦为变量指明了某种数据类型，该变量以后就不能赋予其他类型的数据了，除非经过强制类型转换或隐式类型转换。典型的强类型语言有 C/C++、Java、C# 等。

```cpp
int a = 100;  //不转换
a = (int)12.34;  //强制转换（直接舍去小数部分，得到12）
//Java 对类型转换的要求比 C/C++ 更为严格，隐式转换只允许由低向高转，由高向低转必须强制转换。
```

弱类型语言在定义变量时不需要显式地指明数据类型，编译器（解释器）会根据赋给变量的数据自动推导出类型，并且可以赋给变量不同类型的数据。典型的弱类型语言有 JavaScript、Python、PHP、Ruby、Shell、Perl 等。

```cpp
a = new Array("JavaScript","React","JSON");  //赋给数组,JS
$a = 100;  //赋给整数
$a = 12.34;  //赋给小数
$a = array("JavaScript","React","JSON");  //赋给数组,PHP
```

弱类型语言往往是一边执行一边编译，这样可以根据上下文（可以理解为当前的执行环境）推导出很多有用信息，让编译更加高效。我们将这种一边执行一边编译的语言称为解释型语言，而将传统的先编译后执行的语言称为编译型语言。

强类型语言较为严谨，在编译时就能发现很多错误，适合开发大型的、系统级的、工业级的项目；而弱类型语言较为灵活，编码效率高，部署容易，学习成本低，在 Web 开发中大显身手。另外，强类型语言的 IDE 一般都比较强大，代码感知能力好，提示信息丰富；而弱类型语言一般都是在编辑器中直接书写代码。

模板所支持的类型是宽泛的，没有限制的，我们可以使用任意类型来替换，这种编程方式称为泛型编程（Generic Programming）。相应地，可以将参数 T 看做是一个泛型，而将 int、float、string 等看做是一种具体的类型。除了 C++，Java、C#、Pascal（Delphi）也都支持泛型编程。

### 友元

```cpp
限制特定的实例为友元 
template <typename T> class Pal;
template <typename T> class C
{
    friend class Pal<T>;//限制用T初始化，需要前置声明
    friend class Pal<C>;//限制用C初始化的为友元
    template<typename X> friend class Pal2;//所有实例都是C的友元，不用前置声明，注意typename不能写成本类的T(会被外部的T屏蔽)，实例化时可以任意
};
//如果成员函数要访问本类的其它实例，则需要将自己声明为友元类(特定实例或所有实例)，因为不同实例相当于不同的类
将自己的模板参数声明为友元
template <typename T> class C
{
    friend T;//当T是类类型或函数时，将称为C的友元，内置类型也不会冲突
}
```

### 模板类型别名和static成员

```cpp
typedef std::map<int,std::string> vec;//合法

template <typename T>
typedef std::map<int,T>alias;//非法

template <typename T> using alias= std::map<int,T>;
alias<std::string>bar;//std::map<int,std::string>bar;

\\实例化后每一种实例都会有一份独有的静态成员，静态成员不能通过模板类访问，静态成员函数和其它成员函数一样只有在实例化时才会被定义

 typedef typename std::vector<T>::size_type sizeType; //typename告诉编译器sizetype是一个类型而不是静态成员，是typename不同于class的地方，另一个不同的用处是用于声明模板函数实例化。

```

### 模板默认实参

```cpp
template <typename T,template F=less<T>>
int compare(const T& x, const T* y,F f=F())//前一个F是模板参数，后面的F()是默认的F，即less<T>；
{
    if(f(x,y))return -1;
    if(f(y,x))return 1;
    return 0;
}
template <typename T=int>class{...};
class<>A;

```

### 成员模板

```cpp
class DebugDelete
{
    public:
    DebugDelete(std::ostream &s=std::cerr):os(s){}
    template <typename T>
    void operator()(T *p)const
    {
        os<<"deleting unique_ptr"<<std::endl;
        delete p;
    }
    private:
    std::ostream &os;
};
double *p=new double(2);
DebugDelete d;
d(p);
DebugDelete()(p1);//用默认构造的临时对象

template <typename T>class Blob
{
    template<typename It>
    Blob(It b,It e){
        ...
    }
};
```

### 控制实例化

显式实例化:区别于模板被使用时才进行的隐式实例化，相当于放入一个普通实体函数的定义

防止不同文件出现重复的实例化(不同文件有相同的模板和函数参数)，使不同文件共享某一个文件里的实例化定义

如果调用其它文件的模板函数也可以用显式实例化作为声明标识，代替使用注释标识

```cpp
extern template class<Blob>;//extern声明实例化定义在外部，将调用该实例化定义，本文件不会生成实例化代码，extern声明需要出现在需要实例化定义的片段之前。
template int compare(const int& a,const int& b);//实例化定义
template MyStack<int, 6>::MyStack( void );//实例化特定成员
//特别的，类模板的实例化定义会实例化其所有成员函数(不同与普通模板的实例化),所以实例化定义时的模板实参必须适合每一个成员函数，有局限性。
```

### 模板实参推断

a. **A template specialization for a specific typeis more specialized than one taking a generic type argument**.
b. A template taking only T\* is more specialized than one taking only T , because a hypothetical type X\* is a valid argument for a T template argument, but X is nota valid argument for a T\* template argument.
c. const T is more specialized than T , because const X is a valid argument for a T template argument, but X is nota valid argument for a const T template argument.
d. const T\* is more specialized than T*\ , because const X\* is a valid argument for a T\* template argument, but X\* is nota valid argument for a const T \* template argument.

模板只支持const转换和数组，函数到指针的转换

注意引用传递数组时将不会转换为指针，此时如果维度不同则类型就不相同

普通函数实参(和模板无关）和显式(\<type\>)定义的实参可以进行正常的类型转换

```cpp
template<typename T>
void f(T,T);
long long lnt;
f(lnt,100);//不匹配
f<long>(lnt,100)//显式指定，100自动转换为long

//有多个模板参数时显式指定的参数从左向右匹配
template<typename T1, typename T2,template T3>
T1 f(T2,T3);
f<int>(1,2);//T1显式指定，T2，T3根据实参推断，T1如果不在列表最左则不能匹配

```

```cpp
//有时不能提前知道返回的准确类型，可以用尾置返回类型加以指定
template<typename It>
auto fcn(It beg,It end) ->decltype(*beg)//推断类型为迭代器所指元素的引用
{
    return *beg;
}
//如果要实现返回值，则须通过标准类型转换模板
template<typename It>
auto fcn(It beg,It end) ->typename remove_reference<decltype(*beg)>::type
{
    return (*beg);
}
```

![标准类型转换模板](https://i.loli.net/2021/10/23/ywCDS8aBslnNJzi.png)

模板实参类型转换

```cpp
// templated_user_defined_conversions.cpp 
template <class T> struct S 
{ 
    template <class U> 
operator S<U>()//重载尖括号
{ 
     return S<U>();
}
};
int main() 
{ 
    S<int> s1;
    S<long> s2 = s1; // Convert s1 using UDC and copy constructs S<long>. 
     //在s2的复制构造函数的形参列表里以s1为实参，通过返回的显式指定模板实参为long的构造函数实现了模板实参类型转换
}
```

函数指针实参推断

```cpp
template<typename T>
int compare(const T&,const T&);
int (*ptr)(const int &,const int &)=compare;//指向以int实例化的函数
void func(const int &,const int &);
void func(const string &,const string &);
func(compare);//不能推断出模板实参类型
func(compare<int>)//显式指定
```

引用推断类似函数的形参：T&：左值，const T &:左右值，T&&：右值

引用折叠

X& &,X& &&,X&& & 都折叠成X&;**X推断为type&**
X&& && 折叠成X&&,**X推断为type**
引用折叠只能用于间接创建的引用的引用(直接创建引用的引用是非法的)，如类型别名和模板实参
**X&&可接受任意类型的参数，可以叫做万能引用**
但由于模板实参推断出来的可能是引用也可能是非引用，所以一般只用于转发和重载(匹配非cosnt右值)

```cpp
template<typename T>
typename remove_reference<T>::&& move(T&& t)
{
    return static_cast<typename remove_reference<T>::type&&>(t);
}
//传入左值时T推断为引用，然后引用被remove了，加上&&后依然返回一个右值
//所以std::move可接受左值也可接受右值
```

### 转发

函数将实参传递给内部其它函数并保持性质不变，包括实参是否为const和是左值还是右值

如果一个函数参数是指向模板类型参数的右值引用，它对应的实参的const属性和左值右值属性将得到保证

但因为函数参数都只能是左值，所以转发的时候参数即使被识别为右值引用，传递给内部函数的依然是一个左值，所以T&&不能用于发送右值引用的参数。

T&&模板中的 T 保存着传递进来的实参的信息，我们可以利用 T 的信息来强制类型转换我们的 param 使它和实参的类型一致

```cpp
template<typename T>
T&& forward(T &param)
{
     return static_cast<T&&>(param);
}
//右值引用或右值转换后还是右值引用(T&& &&->T&&,T->T&&)，左值引用转换后结果还是左值(T& &&->T&)
void f(int &&i,int &j)
{
    std::cout<<i<<j<<std::endl;
}

template<typename F, typename T1, typename T2>
void filp(F f, T1 &&t1, T2 &&t2)
{
    // f(t1,t2);
     f(std::forward<T1> t1,std::foward<T2> t2);
} 
int i=0;
filp(1,i);
```

### 模板类继承

类模板从类模板派生

```cpp
template <class T1, class T2>
class A
{
    Tl v1; T2 v2;
};
template <class T1, class T2>
class B : public A <T2, T1>
{
    T1 v3; T2 v4;
};
```

类模板从模板类派生，常用

```cpp
template<class T1, class T2>
class A{ T1 v1; T2 v2; };
template <class T>
class B: public A <int, double>
{T v;};
```

类模板从普通类派生

```cpp
class A{ int v1; };
template<class T>
class B: public A{ T v; };
```

普通类从模板类派生

```cpp
template <class T>
class A{ T v1; int n; };
class B: public A <int> { double v; };
```

### 重载与模板

函数模板会进行严格的类型匹配，模板类型不提供隐式类型转化
普通函数能够进行自动类型转换

函数模板重载四大规则
1 函数模板可以像普通函数一样被重载
2 C++编译器**优先考虑普通函数**
3 如果函数模板可以产生一个更好的匹配，那么选择模板
4 可以通过空模板实参列表的语法限定编译器只通过模板匹配

```cpp
//Tx和T*X,对于指针类型会选择更匹配的T*x

cout<<debug_rep("lalala")<<endl;

template<typename T>
string debug_rep(const T &);//T会被绑定到char[6]
template<typename T>
string debug_rep(T*);//T会被绑定到const char,数组到指针的转换是精确匹配

string debug_rep(const string &);//需要从const char *到string的转换
//最终会调用第二个模板函数

//如果希望将其按string处理，需要自定义重载的转换函数
string debug_rep(char *p)
{
    return debug_rep(string(p));
}
string debug_rep(const char *p)
{
    return debug_rep(string(p));
}
//在定义任何函数之前要确保所有重载的版本已经声明，否则编译器可能在遇到所需要的函数之前实例化一个并非是所需的版本
```

### 可变参数函数模板

```cpp
template<typename T,typename... Args>//Args：模板参数包名,T必须存在，因为模板参数不能为空
void foo(const T,const Args&... rest)//rest:函数参数包名,T可选
foo(i,s,t,r);//包中有三个参数
foo(i)//空包

template<typename T,typename... Args>
void count(Args...args)
{
    cout<<sizeof...(Args)<<sizeof...(args)<<endl;
}
count<int>(1,2,3,4,5);//显式指定确定T
//5 5
template <typename T>
std::ostream &print(std::ostream &out, const T &t)//递归终止，rest只剩一个元素时调用,更特例化，如果删除则下面函数递归到最后将没有参数匹配t,作为重载函数声明需在作用域
{
    return out<<t<<std::endl;
}
template <typename T,typename...Args>
std::ostream &print(std::ostream &out,const T&t,const Args&...rest)//拓展Args,拓展模式为引用，注意引用符号的位置
{
   out<<t<<' ';
   print(out,rest...);//拓展rest
}

```

转发可变参数模板

```cpp
template <typename...Args>
void func(Args&&... args)
{
  work(std::forward(Args)(args)...);
}
```

### 模板特例化(显式具体化)

单一模板不一定能匹配所有情况，所以需要一个不平凡的特例

```cpp
template<typename T>
int compare(const T&a,const T&b)
{
    if(a<b)
    return -1;
    if(a>b)
    return 1;
    return 0;
}
template<size_t N,size_t M>
int compare(const char(&p)N,const char (&q)M)
{
    return strcmp(p,q);
      
}
const char *p1="alalla",*p2="lilili";
compare(p1,p2);//将调用模板1,但无法判断出来两个字符串的大小
compare("hi","huhu");//将调用模板2,因为无法将指针转化为数组的引用

template<>//注意与显式实例化的区别 
compare(const char *const &p,const char * const &q)//模板1的特例化版本，T会被推断为const char*
{
 return strcmp(p,q);
}
//先匹配到模板1，再比较自动推断的T和特例化的T，判断出后者更精确，于是选择特例化版本
```

特例化本质是**实例化一个模板，而非重载**，不影响函数匹配，和显式实例化最大的区别是**重新定义了函数体**。

特例化依然要满足普通作用于规则，否则丢失声明会导致匹配不到特例化版本。

模板及其特例化声明应放在同一个头文件里，同名模板的声明在前面，然后是这些模板的特例化版本。

类模板特例化

部分特例化(偏特化)的模板参数是原始模板列表的一个子集或特例化版本，如果列表为空则为全特化。

**函数模板特例化只能全特化.**

```cpp
//remove_reference实现，特例化版本的模板参数与原模板的相同，但类型不同
template <typename T>
struct remove_reference{ typedef T type;}
template <typename T>
struct remove_reference<T&>{ typedef T type;}
template <typename T>
struct remove_reference<T&&>{ typedef T type;}
remove_reference<decltype(42)>::type a;//调用第一个
remove_reference<decltype(decltype(i))>::type b;//调用第二个
remove_reference<decltype(std::move(i))>::type c;//调用第三个
//a,b,c皆为int型
```

特例化成员

```cpp
template<typename T>
struct foo 
{
    void bar() {
        /*...*/
    }
};
template<>
void Foo<int>bar()
{
    /*特例化的语句*/
}
foo<string>bar();//调用foo<string>的版本
foo<int>bar();//调用特例化而非默认的
```

## threat

### basic

线程：线程是操作系统能够进行CPU调度的最小单位，它被包含在进程之中，一个进程可包含单个或者多个线程。可以用多个线程去完成一个任务，也可以用多个进程去完成一个任务，它们的本质都相当于多个人去合伙完成一件事。

多线程并发：多线程是实现并发(双核的真正并行或者单核机器的任务切换都叫并发）的一种手段，多线程并发即多个线程同时执行,一般而言，多线程并发就是把一个任务拆分为多个子任务，然后交由不同线程处理不同子任务,使得这多个子任务同时执行。

C++多线程并发： （简单情况下）实现C++多线程并发程序的思路如下：将任务的不同功能交由多个函数分别实现，创建多个线程，每个线程执行一个函数，一个任务就这样同时分由不同线程执行了。

