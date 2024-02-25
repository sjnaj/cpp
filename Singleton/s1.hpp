class Singleton {
public:
    static Singleton& getInstance() {
        static Singleton instance; // initialized only once
        return instance;
    }
private:
    Singleton() = default; // private constructor
    ~Singleton() = default; // private destructor
    Singleton(const Singleton&) = delete; // disable copy
    Singleton& operator=(const Singleton&) = delete; // disable assignment
};