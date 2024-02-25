#include<list>
#include<vector>
#include<chrono>
#include "timer.hpp"
int main(){
    {
        std::list<char>a;
        TIMERSTART(list);
        for(size_t i=0;i<65535;i++){
            a.push_back(42);
        }
        TIMERSTOP(list);
        
    }
    {
        std::vector<char>a;
        TIMERSTART(vector);
        for(size_t i=0;i<65535;i++){
            a.push_back(42);
        }
        TIMERSTOP(vector);
    }
}