#include <mutex>
#include <unordered_map>
#include <thread>
class Singleton {
public:
    static Singleton* getInstance(std::thread::id _id) {
        return objs_[_id];
    }
    static void addInstance(Singleton* _objptr) {
        std::lock_guard<std::mutex> lk(mutex_); // must add a lock here
        objs_[std::this_thread::get_id()] = _objptr;
    }
private:
    static std::unordered_map<std::thread::id, Singleton*> objs_;
    static std::mutex mutex_;
};

// singleton.cpp
std::unordered_map<std::thread::id, Singleton*> Singleton::objs_;
std::mutex Singleton::mutex_;