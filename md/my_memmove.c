#include <stdio.h>
void *my_memmove(void *dst, void const *src, size_t count)
{
    char *t_dst = dst;
    char *t_src = src;

    if (dst > src && dst < src + count)
    {
        while (count--)
            *(t_dst + count) = *(t_src + count);
    }
    else
    {
        while (count--)
            *(t_dst++) = *(t_src);
    }
    return dst;
}
