/*
 * @Author: fengsc
 * @Date: 2021-12-08 11:44:02
 * @LastEditTime: 2021-12-26 22:18:54
 */
#include <iostream>
#include <vector>
#include <cstring>
//注意左移右移的优先级很低
#define LC(x) ((x << 1) + 1) //LChild
#define RC(x) ((x + 1) << 1) //RChild
#define PRT(x) ((x - 1) / 1) //Parent

template <typename TD, typename TK = int, typename Comp = std::less<TK>> //元素和键值类型，键值默认int
class PQueen                                                             //优先队列，基于二叉堆
{
    template <typename X, typename Y> //堆排序函数的友元声明
    friend void heapSort(std::vector<X> &,Y);

private:
    Comp comp; //比较函数(结构体)
    struct Node
    {
        TD data;
        TK key;
        Node():data("lala"),key("haha"){}
    };
    int maxN, n; //容量和大小
    Node **elem; //存储指针，动态分配,可扩容,类里面只能写作指针形式
    //上滤下滤的比较部分的注释基于小根堆
    void siftUp(int start) //自底向上筛选调整(上滤)
    {
        Node *temp = elem[start];
        int i = start, j = start;
        while ((i = PRT(i)) > -1) //迭代上行
        {
            if (!comp(temp->key, elem[i]->key)) //子女键值不小于双亲，不调整
                break;
            elem[j] = elem[i]; //双亲结点下沉
            j = i;
        }
        elem[j] = temp; //插入待插入结点
    }
    void siftDown(int start, int end) //在顶点start和end之间(前闭后开)自顶向下筛选调整(下滤)
    {
        Node *temp = elem[start];
        int i = start, j = start;
        while ((j = LC(j)) < end) //*迭代下行，注意赋值运算优先级较低
        {
            if (j < end - 1 && comp(elem[j + 1]->key, elem[j]->key))
                j++;                            //右子女更小，移动到右子女
            if (!comp(elem[j]->key, temp->key)) //子女键值不小于双亲，不调整
                break;
            elem[i] = elem[j]; //子女上行
            i = j;
        }
        elem[i] = temp;
    }

public:
    bool empty() { return n == 0; }
    void clear()
    {
        for (int i = 0; i < n; i++)
            delete elem[i];
        n = 0;
    }
    PQueen(int size) : elem((Node **)malloc(size * sizeof(Node *))), maxN(size), n(0) {} //预分配空间
    PQueen(const std::vector<TK> &data)                                                  //自下而上下滤建堆，n,Folid提出,"合理的税收政策",简化起见只输入一个数组，使data等同与key
    {
        n = maxN = data.size();
        elem = (Node **)malloc(n * sizeof(Node *));
        int a;
        for (int i = 0; i < n; i++)
        {
            elem[i] = (Node *)malloc(sizeof(Node));
            elem[i]->data = elem[i]->key = data[i]; //默认键值即数据
        }
        for (int i = n / 2 - 1; i >= 0; i--) //从最后的局部子树根开始
            siftDown(i, n);
    }

    /*PQueen(const vector<T> &data) //自上而下上滤建堆,大于nlogn,复杂度太高，已经足够做全排序了，"颠倒的税收政策"
    {
     elem.resize(data.size());
        for (int i = 0; i < data.size(); i++)
            elem[i] = Node(data[i], data[i]);
        for (int i = 1; i <n; i++) //从1号结点开始
            siftUp(i);
    }*/
    ~PQueen()
    {
        for (int i = 0; i < n; i++) //析构数组里的指针指向的空间
            free(elem[i]);
        free(elem);
    }
    void enqueue(TD x, TK key) //入队，logn
    {
        if (n == maxN)
        {
            Node **tmp = elem; // save pointer in case realloc fails
            try
            {
                maxN *= 2;
                tmp = (Node **)realloc(elem, maxN * sizeof(Node *)); //与new delete不适配，C++最好还是用自带的vector，否则就只能全用C的内存分配
            }
            catch (const std::bad_alloc &e)
            {
                for (int i = 0; i < n; i++)
                    free(elem[i]);
                free(elem);
                std::cerr << e.what() << std::endl;
            }
            elem = tmp;
        }
        elem[n++] = new Node(x, key);
        siftUp(n - 1);
    }
    TD dequeue() //优先级最高的(最小元素)出队,logn
    {
        if (n == 0)
            throw std::out_of_range("queue is empty");
        TD temp = elem[0]->data;
        delete elem[0];
        elem[0] = elem[--n];
        siftDown(0, n);
        return temp;
    }
    TD front()
    {
        if (n == 0)
            throw std::out_of_range("queue is empty");
        return elem[0]->data;
    }
};
template <typename T = int> //键值类型默认int
class IndexPQueen           //基于小根堆的下标优先队列,容量固定，data域存储下标
{
private:
    int n, maxN;
    struct Node
    {
        int index;
        T key;
        Node(int _index = 0, T _key = (T)0) : index(_index), key(_key) {}
    };
    Node **elem;
    int *contains;         //指示下标元素在elem中的下标，与elem中的data双向指示
    void siftUp(int start) //自底向上筛选调整(上滤)
    {
        Node *temp = elem[start];
        int i = start, j = start;
        while ((i = PRT(i)) > -1) //迭代上行
        {
            if (elem[i]->key <= temp->key) //双亲键值小，不调整
                break;
            elem[j] = elem[i];            //双亲结点下沉
            contains[elem[i]->index] = j; //更新下沉结点的contains数组
            j = i;
        }
        elem[j] = temp;            //插入待插入结点
        contains[temp->index] = j; //更新其contains
    }
    void siftDown(int start, int end) //在顶点start和end之间(前闭后开)自顶向下筛选调整(下滤)
    {
        Node *temp = elem[start];
        int i = start, j = start;
        while ((j = LC(j)) < end) //*迭代下行，注意赋值运算优先级较低
        {
            if (j < end - 1 && elem[j]->key > elem[j + 1]->key)
                j++;                       //右子女更小，移动到右子女
            if (elem[j]->key >= temp->key) //子女键值大，不调整
                break;
            contains[elem[j]->index] = i;
            elem[i] = elem[j]; //子女上行
            i = j;
        }
        elem[i] = temp;
        contains[temp->index] = i;
    }

public:
    IndexPQueen(int size) : elem(new Node *[size]), maxN(size), n(0), contains(new int[size]) //初始化容量，size应大于最大下标
    {
        for (int i = 0; i < maxN; i++) //初始值为-1
            contains[i] = -1;
    }
    void indexCheck(int index) //越界判断
    {
        if (index < 0)
            throw std::out_of_range("Index is negative");
        if (index >= maxN)
            throw std::out_of_range("Index is out of capacity");
    }
    void enqueue(int x, T key)
    {
        if (exists(x))
            throw std::invalid_argument("Index already exists");
        contains[x] = n;
        elem[n++] = new Node(x, key);
        siftUp(n - 1);
    }
    int dequeue()
    {
        if (n == 0)
            throw std::out_of_range("queue is empty");
        int index = elem[0]->index;
        contains[index] = -1;
        delete elem[0];
        if ((--n) > 0) //!
        {
            elem[0] = elem[n];
            contains[elem[0]->index] = 0;
            siftDown(0, n);
        }
        return index;
    }
    bool exists(int x) //监测存在和越界
    {
        indexCheck(x);
        return contains[x] != -1;
    }
    void change(int x, int key)
    {
        if (!exists(x))
            throw std::invalid_argument("Index is not exists");
        elem[contains[x]]->key = key;
        siftUp(contains[x]); //?siftDown可以直接用，siftUp不行
        siftDown(contains[x], n);
    }
    void clear()
    {
        for (int i = 0; i < n; i++)
            delete elem[i];
        std::fill(contains, contains + maxN, -1);
        n = 0;
    }
    bool empty()
    {
        return n == 0;
    }
    ~IndexPQueen()
    {

        for (int i = 0; i < n; i++) //析构数组里的指针指向的空间
            delete elem[i];
        delete[] elem; //不加会因内存监测而报错，事实上没有影响
        delete[] contains;
    }
};

#undef PRT
#undef LC
#undef RC
