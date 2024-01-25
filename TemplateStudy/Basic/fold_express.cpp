#include <iostream>
template <typename... T>
auto foldSum(T... s)
{
    return (... + s); //((s1+s2)+s3)...
}

struct Node
{
    int value;
    Node *left;
    Node *right;
    Node(int i = 0) : value(i), left(nullptr), right(nullptr) {}
};

template <typename T, typename... TP>
Node *traverse(T np, TP... paths)
{
    return (np->*...->*paths); // np->*paths1->*paths2->...
}

int main()
{

    std::cout << foldSum(1, 2, 3, 4, 5) << std::endl;

    Node *root = new Node{0};
    root->left = new Node{1};
    root->left->right = new Node{2};
    auto left = &Node::left; // 成员指针
    auto right = &Node::right;
    Node *node = traverse(root, left, right);
    
}