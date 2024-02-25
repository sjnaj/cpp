#include <mutex>
#include <atomic>

class Singleton {
private:
    static std::atomic<Singleton*> instance; // 使用原子指针来存储单例实例
    static std::mutex mutex; // 用于同步的互斥锁

protected:
    Singleton() = default; // 默认构造函数
    ~Singleton() = default; // 默认析构函数

public:
 	Singleton(const Singleton&)=delete;//处理下构造函数，避免拷贝
	Singleton& operator=(const Singleton&)=delete; //把=赋值号重载了，避免赋值

    static Singleton* getInstance() {
        Singleton* tmp = instance.load(std::memory_order_relaxed); // 原子地加载instance指针，不强制内存序
        std::atomic_thread_fence(std::memory_order_acquire); // 在读取指针后设置一个“获取”内存屏障

        if (tmp == nullptr) { // 第一次检查，看是否需要创建实例
            std::lock_guard<std::mutex> lock(mutex); // 上锁，防止多线程同时进入
            tmp = instance.load(std::memory_order_relaxed); // 再次原子地加载instance指针
            if (tmp == nullptr) { // 第二次检查，确保实例仍然未被创建
                tmp = new Singleton(); // 创建单例实例
                std::atomic_thread_fence(std::memory_order_release); // 在写入指针前设置一个“释放”内存屏障
                instance.store(tmp, std::memory_order_relaxed); // 原子地存储指向新创建实例的指针
            }
        }
        return tmp; // 返回单例实例的指针
    }
};

std::atomic<Singleton*> Singleton::instance(nullptr); // 初始化原子指针
std::mutex Singleton::mutex; // 初始化互斥锁


