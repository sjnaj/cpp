/*
 * @Author: fengsc
 * @Date: 2021-10-14 16:03:04
 * @LastEditTime: 2021-10-21 10:17:49
 */
#include <iostream>
#include "src/blob.h"
int main()
{
    /*std::allocator<std::string> alloc;
    std::vector<std::string> vi = {"11", "22", "33"};
    auto p = alloc.allocate(vi.size() * 2);
    auto q = std::uninitialized_copy(vi.begin(), vi.end(), p);
    std::uninitialized_fill_n(q, vi.size(), "1");
    std::cout << *p << ' ' << *(p + 1) << "  " << *(p + 2) << std::endl;
    q+=vi.size();
    while (p != q)
        alloc.destroy(--q);
    alloc.deallocate(p, 10);*/
    Blob<std::string> blob = {"hehe", "lala"};
    std::cout << blob.back() << std::endl;
    blob.popBack();
    //blob.popBack();
    std::cout << blob.back() << std::endl;
    std::cout << blob[0] << std::endl;
    const int x = 0;
    std::string s = blob[x];
    blob.pushBack("huhu");
    std::cout << blob.back() << std::endl;
    Blob<int> blob2 = {1, 2, 3};
    BlobPtr<std::string> blobptr(blob,0);
    std::cout <<' '<<*(blobptr)<<std::endl;
    std::vector<int> v{0,1,2,3,4,5};
    Blob<int>test(v.begin(),v.end());
    std::cout <<test.size() << std::endl;
}
//home/fengsc/Desktop/cpp/CppTest/class/build/main
//home/fengsc/Desktop/cpp/CppTest/class/build/main2