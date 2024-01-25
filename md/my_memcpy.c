#include <stdio.h>
void *my_memcpy(void *dst, const void *src, size_t count)
{
    size_t c4 = count / 4;
    size_t c1 = count % 4;
    int *t_dst = dst;
    const int *t_src = src;
    while (c4--)
    {
        *(t_dst++) = *(t_src++);
    }
    char *t_dst1 = dst;
    const char *t_src1 = src;
    while (c1--)
    {
        *(t_dst1++) = *(t_src1++);
    }
    return dst;
}
void *memcpy(void *dest, const void *src, size_t n)
{
    int d0, d1, d2;
    asm volatile(
        "rep ; movsl\n\t" // 先按双字复制(4 bytes)
        "movq %4,%%rcx\n\t"
        "rep ; movsb\n\t"                 // 再复制多余的字节（%4=n&3,n的低两位）
        : "=&c"(d0), "=&D"(d1), "=&S"(d2) // “=&”约束。这告诉 gcc 输出约束寄存器不应该与输入寄存器重叠,在此函数中没有实际作用，因为不会和返回值使用的rax产生冲突
        : "0"(n >> 2), "g"(n & 3), "1"(dest), "2"(src)
        : "memory");
    return dest; // 返回值只是个习惯
}