# cpp

## from c to cpp

### 类（Class）和对象（Object）

类（Class）可以看做C语言中结构体（Struct）的升级版。C++ 中的类也是一种构造类型，但是进行了一些扩展，类的成员不但可以是变量，还可以是函数；通过类定义出来的变量也有特定的称呼，叫做“对象”。可以将类比喻成图纸，对象比喻成零件，图纸说明了零件的参数（成员变量）及其承担的任务（成员函数）；一张图纸可以生产出多个具有相同性质的零件，不同图纸可以生产不同类型的零件。在 C++ 中，通过类名就可以创建对象，即将图纸生产成零件，这个过程叫做类的**实例化**，因此也称**对象是类的一个实例（Instance）**。有些资料也将**类的成员变量称为属性（Property）**，将**类的成员函数称为方法（Method）**。

因为 C++、Java、C#、PHP 等语言都支持类和对象，所以使用这些语言编写程序也被称为面向对象编程，这些语言也被称为面向对象的编程语言。C语言因为不支持类和对象的概念，被称为面向过程的编程语言。

在C语言中，我们会把重复使用或具有某项功能的代码封装成一个函数，将拥有相关功能的多个函数放在一个源文件，再提供一个对应的头文件，这就是一个模块。使用模块时，引入对应的头文件就可以。

而在 C++ 中，多了一层封装，就是类（Class）。**类由一组相关联的函数、变量组成**，可以将一个类或多个类放在一个源文件，使用时引入对应的类就可以。下面是C和C++项目组织方式的对比：

![a](http://c.biancheng.net/uploads/allimg/190212/100PJ491-0.png)

![](http://c.biancheng.net/uploads/allimg/190212/100PK0J-1.png)

---

面向对象编程在代码执行效率上绝对没有任何优势，它的主要目的是方便程序员组织和管理代码，快速梳理编程思路，带来编程思想上的革新。

### 命名空间（Namespace）和头文件

namespace 是C++中的关键字，用来定义一个命名空间，语法格式为：

```cpp
namespace name{
//variables, functions, classes
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

### 输入输出cin，cout

使用 cout 进行输出时需要紧跟<<运算符，使用 cin 进行输入时需要紧跟>>运算符，这两个运算符可以自行分析所处理的数据类型，因此无需像使用 scanf 和 printf 那样给出格式控制字符串。

```cpp
cin>>a>>b;
    cout<<a<<b<<endl;//count<<x<<'\n';//count<<"a is :\n"<<a;
```

### bool and const

C++ 新增了 bool 类型（布尔类型），它一般占用 1个字节长度。bool 类型只有两个取值，true 和 false：true 表示“真”，false 表示“假”

**bool flag;  //定义布尔变量**   flag = a > b;

C和C++中全局 const 变量的作用域相同，都是当前文件，不同的是它们的可见范围：C语言中 const 全局变量的可见范围是整个程序，在其他文件中使用 extern 声明后就可以使用；而C++中 const 全局变量的可见范围仅限于当前文件，在其他文件中不可见，所以它可以定义在头文件中，多次引入后也不会出错。

如果使用的是 GCC，那么可以通过添加 extern 关键字来增大 C++ 全局 const 变量的可见范围，如下所示：

extern const int n = 10;

这样 n 的可见范围就变成了整个程序，在其他文件中使用 extern 声明后就可以使用了。不过这种方式只适用于 GCC，不适用于 VS/VC。

#define 定义的常量仅仅是字符串的替换，不会进行类型检查，而 const 定义的常量是有类型的，编译器会进行类型检查，相对来说比 #define 更安全，所以鼓励使用 const 代#define。

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

malloc 申请完空间之后不会对内存进行必要的初始化，而 new 可以。

string *ps = new string("hello world");

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
+-> | pHead = pBlockHeaderNext | -----------> | pBlockHeaderNext = NULL  | |
    |--------------------------|              |--------------------------| |
    | pBlockHeaderPrev = NULL  |              | pBlockHeaderPrev      ->-|-+
    |--------------------------|              |--------------------------|
    |          ......          |              |          ......          |
    |--------------------------|              |--------------------------|
    |gap: FDFDFDFD             |              |gap: FDFDFDFD             |
    |--------------------------|              |--------------------------|
    |pA: CDCDCDCD              |              |pB: CDCDCDCD              |
    |--------------------------|              |--------------------------|
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

#define SQ(y) ( (y)*(y) )

发生函数调用时，编译器会先对实参进行计算，再将计算的结果传递给形参，并且函数执行完毕后会得到一个值，而不是得到一个表达式，这和简单的字符串替换相比省去了很多麻烦，所以在编写C++代码时推荐**使用内联函数来替换带参数的宏**。

和宏一样，**内联函数可以定义在头文件中（不用加 static 关键字）**，并且头文件被多次#include后也不会引发重复定义错误。这一点和非内联函数不同，非内联函数是禁止定义在头文件中的，它所在的头文件被多次#include后会引发重复定义错误。

内联函数虽然叫做函数，在定义和声明的语法上也和普通函数一样，但它已经失去了函数的本质。函数是一段可以重复使用的代码，它位于虚拟地址空间中的代码区，也占用可执行文件的体积，而内联函数的代码在编译后就被消除了，不存在于虚拟地址空间中，没法重复使用。

在多文件编程时，我建议将内联函数的定义直接放在头文件中，并且禁用内联函数的声明（声明是多此一举）。

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
   //调用get(d);double既可以隐式转换未long，也可以是int,或者说一般的数值类型之间都可以进行隐式类型转换，故无法确定那一个更加匹配。
   ```

3.类型型相关歧义（较深内容，先放下）

### C和C++混合编程

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

```cpp
extern "C" #include lalala.h //一个不用大括号
```

或者直接更改非标准的头文件（c和c++程序都能直接引用）

```cpp
#ifdef __cplusplus//（函数声明出现两次)
extern "C" void display();
#else
void display();
#endif
```

实际开发中，使用这种方式

```cpp
#ifdef __cplusplus//（函数声明出现一次）
extern "C" {//前面加这些
#endif
void display();
#ifdef __cplusplus//后面加这些
}
#endif
```

## 类和对象


### 类的定义和对象的创建

类的成员变量称为**类的属性（Property）**，将类的成员**函数称为类的方法（Method）**。在面向对象的编程语言中，经常把函数（Function）称为方法（Method）。

class是 C++ 中新增的关键字，专门用来定义类。Student是类的名称；类名的首字母一般大写，以和其他的标识符区分开。{ }内部是类所包含的成员变量和成员函数，它们统称为类的成员（Member）；由{ }包围起来的部分有时也称为类体，和函数体的概念类似。public也是 C++ 的新增关键字，它只能用在类的定义中，表示类的成员变量或成员函数具有“公开”的访问权限。

在C++中，**struct 类似于 class，既可以包含成员变量，又可以包含成员函数。**

C++中的 struct 和 class 基本是通用的，唯有几个细节不同：
使用 class 时，类中的成员默认都是**private**属性的；而使用 struct 时，结构体中的成员默认都是 **public**属性的。

class 继承默认是 **private 继承**，而 struct 继承默认是 **public 继承**。

**class 可以使用模板，而 struct 不能**

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
class Student LiLei;  //正确，在栈上创建，形式和定义普通变量类似
Student LiLei;  //同样正确，堆上使用 new 关键字创建
```

类只是一个模板（Template），编译后不占用内存空间，所以在定义类时不能对成员变量进行初始化，因为没有地方存储数据。只有在创建对象以后才会给成员变量分配内存，这个时候就可以赋值了。

```cpp
Student stu;
Student *pStu = &stu;//
Student *pStu = new Student;//使用 new 在堆上创建出来的对象是匿名的，没法直接使用，必须要用一个指针指向它，再借助指针来访问它的成员变量或成员函数。
```

**访问对象的成员变量和成员函数的方法与访问结构体成员的方法一致。**
**栈内存是程序自动管理的**，不能使用 delete 删除在栈上创建的对象；**堆内存由程序员管理**，对象使用完毕后可以通过 delete 删除。在实际开发中，new 和 delete 往往成对出现，以保证及时删除不再使用的对象，防止无用内存堆积。

类的成员变量和普通变量一样，也有数据类型和名称，占用固定长度的内存。但是，在定义类的时候不能对成员变量赋值，因为类只是一种数据类型或者说是一种模板，本身不占用内存空间，而变量的值则需要内存来存储。

类的成员函数也和普通函数一样，都有返回值和参数列表，它与一般函数的区别是：成员函数是一个类的成员，出现在类体中，它的作用范围由类来决定；而普通函数是独立的，作用范围是全局的，或位于某个命名空间内。

当成员函数定义在类外时，就必须在函数名前面加上类名予以限定。**::被称为域解析符（也称作用域运算符或作用域限定符）**，用来**连接类名和函数名**，指明当前函数属于哪个类。**成员函数必须先在类体中作原型声明，然后在类外定义**，也就是说类体的位置应在函数定义之前。

**在类体中定义的成员函数会自动成为内联函数，在类体外定义的不会**。 内联函数一般不是我们所期望的，它会将函数调用处用函数体替代，所以我建议在类体内部对成员函数作声明，而在类体外部进行定义。比较短小的函数可以直接在类体内定义，免去声明。

### 类成员访问权限

c++通过 **public、protected、private 三个关键字来控制成员变量和成员函数的访问权限，它们分别表示公有的、受保护的、私有的，被称为成员访问限定符**。所谓访问权限，就是你能不能使用该类中的成员

在**类的内部（定义类的代码内部）**，无论成员被声明为 public、protected 还是 private，都是可以互相访问的，**没有访问权限的限制**。

在类的外部（定义类的代码之外），只能通过对象访问成员，并且**通过对象只能访问 public 属性的成员**，不能访问 private、protected 属性的成员。

**类的声明和成员函数的定义都是类定义的一部分**，在实际开发中，我们通常将类的声明放在头文件中，而将成员函数的定义放在源文件中。

类中的成员变量 m_name、m_age 和m_ score 被设置成 private 属性，在类的外部不能通过对象访问。也就是说，**私有成员变量和成员函数只能在类内部使用，在类外都是无效的**。

**成员变量大都以m_开头**，这是约定成俗的写法，不是语法规定的内容。以m_开头既可以一眼看出这是成员变量，又可以和成员函数中的形参名字区分开。

给成员变量赋值的函数通常称为 set 函数，它们的名字通常以set开头，后跟成员变量的名字；读取成员变量的值的函数通常称为 get 函数，它们的名字通常以get开头，后跟成员变量的名字。用public的函数可以改变prinvate变量的值。

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

成员函数最终被编译成与对象无关的全局函数。C++规定，编译成员函数时要额外添加一个参数，把当前对象的指针传递进去，**通过指针来访问成员变量**。

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

查看-exec p xx(地址或变量名);


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

**它的名字和类名相同，没有返回值，不需要用户显式调用（用户也不能调用），而是在创建对象时自动执行。这种特殊的成员函数就是构造函数（Constructor）**。

在栈上创建对象时，实参位于对象名后面，例如**Student stu("小明", 15, 92.5f)**；在堆上创建对象时，实参位于类名后面，例如**Student *pstu=new Student("李华", 16, 96)**。

不管是声明还是定义，函数名前面都不能出现返回值类型，即使是 void 也不允许；
函数体中不能有 return 语句。

构造函数的调用是强制性的，**一旦在类中定义了构造函数，那么创建对象时就一定要调用，不调用是错误的**。如果有多个重载的构造函数，那么创建对象时提供的实参必须和其中的一个构造函数匹配；反过来说，**创建对象时只有一个构造函数会被调用**。

如果用户自己没有定义构造函数，那么编译器会自动生成一个默认的构造函数，只是这个构造函数的**函数体是空的，也没有形参，也不执行任何操作**。比如上面的 Student 类，默认生成的构造函数如下：
**Student(){}**
一个类必须有构造函数，**要么用户自己定义，要么编译器自动生成**。一旦用户自己定义了构造函数，不管有几个，也不管形参如何，编译器都不再自动生成.

Student stu()或Student stu，在堆上创建对象可以写作Student *pstu = new Student()或Student *pstu = new Student，它们都会调用构造函数 Student()。**创建对象时都没有写括号，其实是调用了默认的构造函数。**

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
}
```

定义构造函数时并没有在函数体中对成员变量一一赋值，**其函数体为空（当然也可以有其他语句）**，而是**在函数首部与函数体之间添加了一个冒号:**，后面紧跟 **m_name(name), m_age(age), m_score(score)** 语句，这个语句的意思相当于函数体内部的m_name = name; m_age = age; m_score = score;语句，也是赋值的意思。

初始化列表可以用于全部成员变量，也可以只用于部分成员变量。**成员变量的初始化顺序与初始化列表中列出的变量的顺序无关，它只与成员变量在类中声明的顺序有关**.

**在类内定义和在类外定义构造函数一般是等价的**，在类内定义比较简洁。

class func{
public:
char m_A, m_B, m_C;
func(char C) : m_C(C), m_B(m_C) {m_A='A';}//在类外的话前面要加类名func::
}
func *p = new func('C');
B是乱码，初始化顺序是m_A,m_B,m_C;
**const成员变量除了在定义时赋初值外只能用构造函数的初始化列表来初始化**。

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
VLA::VLA(int len): m_len(len){//不能写成m_len=len写在函数体内
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

### 复制构造函数

复制构造函数是构造函数的一种，也称拷贝构造函数，它只有一个参数，参数类型是本类的引用。

复制构造函数的参数可以是 const 引用，也可以是非 const 引用。 一般使用前者，这样既能以常量对象（初始化后值不能改变的对象）作为参数，也能以非常量对象作为参数去初始化其他对象。一个类中写两个复制构造函数，一个的参数是 const 引用，另一个的参数是非 const 引用，也是可以的。

如果类的设计者不写复制构造函数，编译器就会自动生成复制构造函数。大多数情况下，其作用是实现从源对象到目标对象逐个字节的复制，即使得目标对象的每个成员变量都变得和源对象相等。编译器自动生成的复制构造函数称为“默认复制构造函数”。

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
   注意，第二条语句是初始化语句，不是赋值语句。赋值语句的等号左边是一个早已有定义的变量，赋值语句不会引发复制构造函数的调用。
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
3) 如果函数的返冋值是类 A 的对象，则函数返冋时，类 A 的复制构造函数被调用。换言之，作为函数返回值的对象是用复制构造函数初始化 的，而调用复制构造函数时的实参，就是 return 语句所返回的对象。

### 析构函数

析构函数（Destructor）也是一种特殊的成员函数，没有返回值，不需要程序员显式调用（程序员也没法显式调用），**而是在销毁对象时自动执行**。构造函数的名字和类名相同，而析构函数的名字是在类名前面加一个~符号。

**析构函数是对撤销对象占用的内存之前完成的一些清理工作，而不是删除对象。**

析构函数没有参数，不能被重载，因此一个类只能有一个析构函数。如果用户没有定义，编译器会自动生成一个默认的析构函数。

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

非静态成员变量并不能决定自身的存储空间位置。**决定存储位置的对象的创建方式**。

### this指针

this 是 C++ 中的一个关键字，也是一个 const 指针，它指向当前对象，通过它可以访问当前对象的所有成员。

所谓当前对象，是指正在使用的对象。例如对于stu.show();，stu 就是当前对象，this 就指向 stu。

this **只能用在类的内部**，通过 this **可以访问类的所有成员**，包括 private、protected、public 属性的。

以成员函数setname(char *name)为例，它的形参是name，和成员变量name重名，如果写作name = name;这样的语句，就是给形参name赋值，而不是给成员变量name赋值。而写作this -> name = name;后，=左边的name就是成员变量，右边的name就是形参，一目了然。

this 是 const 指针，它的值是不能被修改的，一切企图修改该指针的操作，如赋值、递增、递减等都是不允许的。
**this 只能在成员函数（声明在类体内，定义在类体外时要使用范围解析运算符::）内部使用，用在其他地方没有意义，也是非法的。**
**只有当对象被创建后 this 才有意义，因此不能在 static 成员函数中使用。**

this 实际上是成员函数的一个形参，在调用成员函数时将对象的地址作为实参传递给 this。不过 this 这个形参是隐式的，它并不出现在代码中，而是在编译阶段由编译器默默地将它添加到参数列表中。

this 作为隐式形参，**本质上是成员函数的局部变量，所以只能用在成员函数的内部，并且只有在通过对象调用成员函数时才给 this 赋值。**

成员函数最终被编译成与对象无关的普通函数，除了成员变量，会丢失所有信息，所以编译时要在成员函数中添加一个额外的参数，把当前对象的首地址传入，以此来关联成员函数和成员变量。这个额外的参数，实际上就是 this，**它是成员函数和成员变量关联的桥梁**。

### 静态成员变量和静态成员函数

在C++中，我们可以使用静态成员变量来实现多个对象共享数据的目标。静态成员变量是一种特殊的成员变量，它被关键字static修饰。

static 成员变量属于类，不属于某个具体的对象，即使创建多个对象，也只为 m_total 分配一份内存，所有对象使用的都是这份内存中的数据。当某个对象修改了 m_total，也会影响到其他对象。

static 成员变量必须在类声明的外部初始化，具体形式为：
**type class::name = value;**

type 是变量的类型，class 是类名，name 是变量名，value 是初始值。将上面的 m_total 初始化：
int Student::m_total = 0;

静态成员变量在**初始化时不能再加 static**，但必须要有数据类型。**被 private、protected、public 修饰的静态成员变量都可以用这种方式初始化**。

注意：static 成员变量的内存既不是在声明类时分配，也不是在创建对象时分配，而是在（类外）初始化时分配。反过来说，**没有在类外初始化的 static 成员变量不能使用。**

static 成员变量既可以通过对象来访问，也可以通过类来访问。

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

static 成员变量**不占用对象的内存，而是在所有对象之外开辟内存**，**即使不创建对象也可以访问**,具体来说，static 成员变量和普通的 static 变量类似，都在内存分区中的全局数据区分配内存,初始化时可以赋初值，也可以不赋值。如果不赋值，那么会被默认初始化为 0。

普通成员函数可以访问所有成员（包括成员变量和成员函数），静态成员函数**只能访问静态成员。**

编译器在编译一个普通成员函数时，会隐式地增加一个形参 this，并把当前对象的地址赋值给 this，所以普通成员函数只能在创建对象后通过对象来调用，因为它需要当前对象的地址。而**静态成员函数可以通过类来直接调用，编译器不会为它增加形参 this，它不需要当前对象的地址，所以不管有没有创建对象，都可以调用静态成员函数。**

在C++中，静态成员函数的**主要目的是访问静态成员**。当然**也可以声明为普通成员函数，但是它们都只对静态成员进行操作，加上 static 语义更加明确**。

和静态成员变量类似，静态成员函数在声明时要加 static，在定义时不能加 static。静态成员函数可以通过类来调用（一般都是这样做），也可以通过对象来调用.

### const成员变量和成员函数（常成员函数）

const 成员变量的用法和普通 const 变量的用法相似，只需要在声明时加上 const 关键字。初始化 const 成员变量只有一种方法，**就是通过构造函数的初始化列表.**

const 成员函数**可以使用类中的所有成员变量，但是不能修改它们的值，** 这种措施主要还是为了保护数据而设置的。const 成员函数也称为常成员函数。

我们通常将 get 函数设置为常成员函数。读取成员变量的函数的名字通常以get开头，后跟成员变量的名字，所以通常将它们称为 get 函数。

常成员函数需要在声明和定义的时候**在函数头部的结尾加上 const 关键字**

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
char * Student::getname() const{//记住get函数形式
    return m_name;
}
int Student::getage() const{
    return m_age;
}
float Student::getscore() const{
    return m_score;
}
```

需要强调的是，必须在成员函数的声明和定义处同时加上 const 关键字。char *getname() const和char *getname()是两个不同的函数原型，如果只在一个地方加 const 会导致声明和定义处的函数原型冲突。

最后再来区分一下 const 的位置：
**函数开头的 const 用来修饰函数的返回值**，表示返回值是 const 类型，也就是不能被修改，例如const char * getname()。
**函数头部的结尾加上 const 表示常成员函数**，这种函数只能读取成员变量的值，而不能修改成员变量的值，例如char * getname() const。

### const对象

const int *p1;
int const *p2;
int * const p3;
在最后一种情况下，指针是只读的，也就是 p3 本身的值不能被修改；在前面两种情况下，指针所指向的数据是只读的，也就是 p1、p2 本身的值可以修改（指向不同的数据），但它们指向的数据不能被修改。

当然，指针本身和它指向的数据都有可能是只读的，下面的两种写法能够做到这一点：
纯文本复制
const int * const p4;
int const * const p5;

修饰const后面的所有部分；

const  class  object(params);

class const object(params);

const 指针：
const class *p = new class(params);
class const *p = new class(params);

一旦将对象定义为常对象之后，不管是哪种形式，**该对象就只能访问被 const 修饰的成员了**（包括 const 成员变量和 const 成员函数），因为非 const 成员可能会修改对象的数据（编译器也会这样假设），C++禁止这样做。

### C++成员对象和封闭类

一个类的成员变量如果是另一个类的对象，就称之为“成员对象”。包含成员对象的类叫封闭类（enclosed class）。

类名::构造函数名(参数表): 成员变量1(参数表), 成员变量2(参数表), ...
{
...
}

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
CCar::CCar(int p, int tr, int tw) : price(p), tyre(tr, tw)
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

封闭类的对象，如果是用默认复制构造函数初始化的，那么它包含的成员对象也会用复制构造函数初始化.

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

**复制b1->复制b1.a->调用A的复制构造函数**，（普通变量直接拷贝过去即可）

### 友元函数和友元类

借助友元（friend），可以使得其他类中的成员函数以及全局范围内的函数访问当前类的 private 成员。

在当前类以外定义的、不属于当前类的函数也可以在类中声明，但要在前面加 friend 关键字，这样就构成了友元函数。友元函数可以是不属于任何类的非成员函数，也可以是其他类的成员函数。

友元函数可以访问当前类中的所有成员，包括 public、protected、private 属性的。

友元函数不同于类的成员函数，在友元函数中不能直接访问类的成员，必须要借助对象。

成员函数在调用时会隐式地增加 this 指针，指向调用它的对象，从而使用该对象的成员；而 show() 是非成员函数，没有 this 指针，编译器不知道使用哪个对象的成员，要想明确这一点，就**必须通过参数传递对象（可以直接传递对象，也可以传递对象指针或对象引用），并在访问成员时指明对象**。

friend void Student::show(Address *addr);

**需要提前声明函数，再宣布它是另一个类的朋友**。

```cpp
class Address;  //提前声明Address类，只有在正式声明一个类以后才能用它去创建对象。
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
//声明Address类
class Address{
private:
char *m_province;  //省份
char *m_city;  //城市
char *m_district;  //区（市区）
public:
Address(char *province, char *city, char *district);
//将Student类中的成员函数show()声明为友元函数，函数要先声明
friend void Student::show(Address *addr);
};
```

顺序大概是，提前声明B类，在A类声明将要作为B类友元函数的函数（形参必须有B类），正式B类，并声明友元函数。

因为创建对象时要为对象分配内存，在正式声明类之前，编译器无法确定应该为对象分配多大的内存。编译器只有在“见到”类的正式声明后（其实是见到成员变量），才能确定应该为对象预留多大的内存。在对一个类作了提前声明(**前向声明**)后，可以用该类的名字去定义指向该类型对象的指针变量（本例就定义了 Address 类的指针变量）或引用变量（后续会介绍引用），因为指针变量和引用变量本身的大小是固定的，与它所指向的数据的大小无关。

正式声明类就是定义类。（说法不一）

在创建类的对象之前，必须完整地定义该类。必须定义类，而不只是声明类，这样，编译器就会给类的对象预定相应的存储空间。同样地，在使用引用或指针访问类的成员之前，必须已经定义类。

不仅可以将一个函数声明为一个类的“朋友”，还可以将整个类声明为另一个类的“朋友”，这就是友元类。友元类中的所有成员函数都是另外一个类的友元函数。

例如将类 B 声明为类 A 的友元类，那么类 B 中的所有成员函数都是类 A 的友元函数，可以访问类 A 的所有成员，包括 public、protected、private 属性的。破坏了面向对象的封装特性。

关于友元，有两点需要说明：
友元的关系是单向的而不是双向的。如果声明了类 B 是类 A 的友元类，不等于类 A 是类 B 的友元类，类 A 中的成员函数不能访问类 B 中的 private 成员。
友元的关系不能传递。如果类 B 是类 A 的友元类，类 C 是类 B 的友元类，不等于类 C 是类 A 的友元类。

```cpp
#include <iostream>
using namespace std;
class Address;  //提前声明Address类
//声明Student类
class Student{
public:
    Student(char *name, int age, float score);
public:
    void show(Address *addr);
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
void Student::show(Address *addr){
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

### C++string

C++ 大大增强了对字符串的支持，除了可以使用C风格的字符串，还可以使用内置的 string 类。string 类处理起字符串来会方便很多，完全可以代替C语言中的字符数组或字符串指针。

使用 string 类需要包含头文件 `<string>`，下面的例子介绍了几种定义 string 变量（对象）的方法：

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

变量 s2 在定义的同时被初始化为"c plus plus"。与C风格的字符串不同，string 的结尾没有结束标志'\0'。

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

insert() 函数可以在 string 字符串中指定的位置插入另一个字符串，它的一种原型为：
string& insert (size_t pos, const string& str);

pos 表示要插入的位置，也就是下标；str 表示要插入的字符串，它可以是 string 字符串，也可以是C风格的字符串。

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

系统对 substr() 参数的处理和 erase() 类似：
如果 pos 越界，会抛出异常；
如果 len 越界，会提取从 pos 到字符串结尾处的所有字符。

find() 函数

find() 函数用于在 string 字符串中查找子字符串出现的位置，它其中的两种原型为：
size_t find (const string& str, size_t pos = 0) const;
size_t find (const char* s, size_t pos = 0) const;

第一个参数为待查找的子字符串，它可以是 string 字符串，也可以是C风格的字符串。第二个参数为开始查找的位置（下标）；如果不指明，则从第0个字符开始查找。**pos越界返回npos。**

find() 函数最终返回的是子字符串第一次出现在字符串中的起始下标。本例最终是在下标6处找到了 s2 字符串。**如果没有查找到子字符串，那么会返回一个无穷大值 18446744073709551615。**

rfind() 和 find() 很类似，同样是在字符串中查找子字符串，不同的是 find() 函数从第二个参数开始往后查找，而 **rfind() 函数则最多查找到第二个参数处** ，如果到了第二个参数所指定的下标还没有找到子字符串，则返回一个无穷大值18446744073709551615。

**find_first_of() 函数用于查找子字符串和字符串共同具有的字符在字符串中首次出现的位置。**

**find()必须全部相等，find_first_of()只需要一个字符相等。**

与find_first_of()相对的还有**find_last_of()**，返回被搜索串中最后一个相等字符的位置。

字符查找函数查找成功都会返回目标位置的下标，失败都会返回**npos=-1,类型是unsign long int** ，是size_t的最大值=

$$
2^{64}-1
$$

，表示不存在的位置，可以与-1比较是否相等；

string 在内部封装了与内存和容量有关的信息。具体地说，**C++ string 对象知道自己在内存中的开始位置、包含的字符序列以及字符序列长度；当内存空间不足时，string 还会自动调整，让内存空间增长到足以容纳下所有字符序列的大小。**

C++ string 的这种做法，极大地减少了C语言编程中三种最常见且最具破坏性的错误：

数组越界；
通过未被初始化或者被赋以错误值的指针来访问数组元紊；
释放了数组所占内存，但是仍然保留了“悬空”指针。
C++ 标准没有定义 string 类的内存布局，各个编译器厂商可以提供不同的实现，但必须保证 string 的行为一致。采用这种做法是为了获得足够的灵活性。

只有当字符串被修改的时候才创建各自的拷贝，这种实现方式称为**写时复制（copy-on-write）策略**。当字符串只是作为值参数（value parameter）或在其他只读情形下使用，这种方法能够节省时间和空间。

## C++引用

### 基本

在 C++ 中，我们有了一种比指针更加便捷的传递聚合类型数据的方式，那就是引用（Reference）。

在 C/C++ 中，我们将 char、int、float 等由语言本身支持的类型称为基本类型，将数组、结构体、类（对象）等由基本类型组合而成的类型称为聚合类型

引用（Reference）是 C++ 相对于C语言的又一个扩充。引用可以看做是数据的一个别名，通过这个别名和原来的名字都能够找到这份数据。

引用的定义方式类似于指针，只是用&取代了*，语法格式为：

type &name = data;

type 是被引用的数据的类型，name 是引用的名称，data 是被引用的数据。引用必须在定义的同时初始化，并且以后也要从一而终，不能再引用其它数据，这有点类似于常量（const 变量）。

**注意，引用在定义时需要添加&，在使用时不能添加&，使用时添加&表示取地址**

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

本编译器不允许，会保段错误
