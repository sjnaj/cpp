/*
 * @Author: fengsc
 * @Date: 2021-11-06 19:39:43
 * @LastEditTime: 2021-12-12 01:10:38
 */
#include "AVLTree.cpp"
int main()
{


    AVLTree T = nullptr, temp;
    string command, data;
    int key;
    while (cin >> command)
    {
        if (command == "insert")
        {
            cin >> key >> data;
            insert(T, key, data);
        }
        else if (command == "status")
        {
            int h = 0;
            cout << "Verify:";
            if (IsBalance(T, h))
                cout << "OK  " << Count(T) << " nodes  height:" << h;
            else
                cout << "<Not Balance>";
            cout << endl;
        }
        else if (command == "search")
        {
            cin >> key;
            cout << "search " << key << ':';
            if ((temp = search(T, key, temp)) != nullptr)
                cout << temp->data;
            else
                cout << "<Not Found>";
            cout << endl;
        }
        else if (command == "delete")
        {
            cin >> key;
            remove(T, key);
        }
        else if (command == "bye")
        {
            cout << "bye\n";
            break;
        }
        else
        {
            cout << "bad command:" << command << endl;
            while (getchar() != '\n')
                ;
        }
    }
    FreeTree(T);
}