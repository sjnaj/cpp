/*
 * @Author: fengsc
 * @Date: 2021-10-28 21:16:08
 * @LastEditTime: 2021-10-28 21:42:35
 */
#include <iostream>
#include <chrono>
struct Timer
{
    std::chrono::time_point<std::chrono::high_resolution_clock> start, end;
    //hign_resolution_clock是steady_clock的进阶版,steady_clock相比于system_clock更适合计时
    std::chrono::duration<float> duration;
    Timer()
    {
        start = std::chrono::high_resolution_clock::now(); //nm clock
    }
    ~Timer()
    {
        end = std::chrono::high_resolution_clock::now();
        duration = end - start;
        std::cout << "Timer took" << duration.count()*1000 << "ms" << std::endl;
    }
};