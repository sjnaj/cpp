#include <mutex>
#include <thread>
class Singleton {
public:
    static Singleton* getInstance() {
        if (instance == NULL) { // first check
            std::lock_guard<std::mutex>lk(mutex); // acquire lock
            if (instance == NULL) { // second check
                instance = new Singleton(); // create singleton
                // memory barrier here
            }
        }
        return instance;
    }
private:
    static Singleton* instance; // singleton pointer
    static std::mutex mutex; // mutex for synchronization
    Singleton() = default; // private constructor
    ~Singleton() = default; // private destructor
    Singleton(const Singleton&) = delete; // disable copy
    Singleton& operator=(const Singleton&) = delete; // disable assignment
};
Singleton* Singleton::instance = NULL; // initialize pointer
std::mutex Singleton::mutex ; // initialize mutex
