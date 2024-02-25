#include <mutex>
#include <thread>
class Singleton {
public:
    static Singleton* getInstance() {
        std::call_once(flag, [](){ instance = new Singleton(); }); // initialize once
        return instance;
    }
private:
    static Singleton* instance; // singleton pointer
    static std::once_flag flag; // flag for std::call_once
    Singleton() = default; // private constructor
    ~Singleton() = default; // private destructor
    Singleton(const Singleton&) = delete; // disable copy
    Singleton& operator=(const Singleton&) = delete; // disable assignment
};
Singleton* Singleton::instance = NULL; // initialize pointer
std::once_flag Singleton::flag; // initialize flag
