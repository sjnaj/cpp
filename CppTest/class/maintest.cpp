

/*
 * @Author: fengsc
 * @Date: 2021-10-21 10:18:59
 * @LastEditTime: 2021-10-28 22:32:00
 */
#include <iostream>
#include <thread>
#include "src/timeCount.h"
using namespace std;
static bool s_finished = false;
void doWork()
{
    using namespace std::literals::chrono_literals;
    while (!s_finished)
    {
        cout << "working...\n";
        this_thread::sleep_for(1s);
    }
}
int main()
{
    Timer timer;
    /* thread worker(doWork);
    cin.get();
    s_finished = true; //终止条件:获取一个字符
    worker.join();     //Blocks until the associated thread completes.
    */
    using namespace std::chrono;
    using namespace std::literals::chrono_literals;
    auto begin = high_resolution_clock::now();
    this_thread::sleep_for(1s);
    auto end = high_resolution_clock::now();
   // auto duration=end - begin;
    //double ms=(double)duration.count()/CLOCKS_PER_SEC;
   auto duration = duration_cast<milliseconds>(end - begin);
    cout << duration.count() <<"ms" << endl;
}
