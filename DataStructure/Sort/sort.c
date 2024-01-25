void quickSort(int arr[], int l, int r)
{
    if (l >= r)
        return;

    int k = arr[l];
    int i = l - 1;
    int j = r + 1;
    while (i < j)
    {
        do
            i++;
        while (arr[i] < k);
        do
            j--;
        while (arr[j] > k);
        if (i < j)
        {
            int tmp = arr[i];
            arr[i] = arr[j];
            arr[j] = tmp;
        }
    }

    quickSort(arr, l, j - 1);
    quickSort(arr, j + 1, r);
}

int *tmp = NULL;
void mergeSort(int arr[], int l, int r)
{
    if (l >= r)
        return;
    if (tmp == NULL)
    {
        tmp = (int *)malloc(sizeof(int) * (r - l + 1));
    }

    int mid = (l + r) / 2;
    mergeSort(arr, l, mid);
    mergeSort(arr, mid + 1, r);
    // 归并:使用到额外的数组tmp[]
    int i = l;
    int j = mid + 1;
    int k = 0;
    while (i <= mid && j <= r)
    {
        if (arr[i] >= arr[j])
            tmp[k++] = arr[j++];
        else
            tmp[k++] = arr[i++];
    }
    while (i <= mid)
        tmp[k++] = arr[i++];
    while (j <= r)
        tmp[k++] = arr[j++];
    // 复制回去
    for (int p = 0, q = l; q <= r; p++, q++)
        arr[q] = tmp[p];
}