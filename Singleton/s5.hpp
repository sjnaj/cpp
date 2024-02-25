class ThreadLocalSingleton {
public:
    static ThreadLocalSingleton& getInstance() {
        thread_local ThreadLocalSingleton instance;
        return instance; 
    }
    ThreadLocalSingleton(const ThreadLocalSingleton &) = delete;
    ThreadLocalSingleton(ThreadLocalSingleton &&) = delete;
    /* getter & setter for Class C pointer */
    //...
private:
    ThreadLocalSingleton() {}
    // class C pointer
};