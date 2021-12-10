/*
 * @Author: fengsc
 * @Date: 2021-11-19 01:57:01
 * @LastEditTime: 2021-12-02 21:24:58
 */
#pragma once
#include <iostream>
#include <cstdlib>
#include <vector>
#include <iomanip>
#include <sstream>
using std::pair;
using std::string;
using std::vector;
template <typename T>
struct Matrix
{
    //定义为class时要添加以下代码
    /*template <typename X>
    friend std::ostream &operator<<(std::ostream &, const Matrix<X> &);
    template <typename X>
    //和自己的任何实例都是友元,便于函数中使用特定实例的私有成员
    friend class Matrix;
    template <typename Tv, typename Te>
    friend class GraphMatrix;*/

    vector<vector<T>> matrix;
    size_t row;
    size_t col;

    Matrix() : matrix(0), row(0), col(0) {}
    Matrix(const vector<vector<T>> &m) : matrix(m), row(m.size()), col(m[0].size()) {}
    Matrix(size_t _row, size_t _col) : row(_row), col(_col), matrix(_row, vector<T>(_col, 0)) {}
    Matrix(const vector<pair<int, int>> &relate, int n) : Matrix(n, n)
    {
        for (int i = 0; i < relate.size(); i++)
            matrix[relate[i].first][relate[i].second] = true;
    }
    Matrix(size_t n) : row(n), col(n), matrix(n, vector<T>(n, 0)) //构造单位阵
    {
        for (int i = 0; i < n; i++)
            for (int j = 0; j < n; j++)
                matrix[i][j] = (i == j);
    }
    Matrix transpose();
    vector<T> &operator[](size_t);
    Matrix operator*=(const Matrix &);
    Matrix operator*(const Matrix &); //支持布尔积和布尔幂
    Matrix power(size_t);
    Matrix operator+=(const Matrix &); //对于布尔类型与|,|=等价
    Matrix operator+(const Matrix &);
    Matrix operator-=(const Matrix &);
    Matrix operator-(const Matrix &);
    //布尔矩阵运算
    Matrix<bool> operator&(const Matrix<bool> &);
    Matrix<bool> operator|(const Matrix<bool> &);
    Matrix<bool> operator&=(const Matrix<bool> &);
    Matrix<bool> operator|=(const Matrix<bool> &);
    Matrix<int> getInt(); //获取int类型副本，有时需要进行普通的积
    template <typename X = int>
    static vector<pair<X, X>> getPair(const string &s) //获取关系对
    {
        std::stringstream ss(s);
        vector<pair<X, X>> pairs;
        pair<X, X> p;
        char c; //占位
        while (ss >> c >> p.first >> c >> p.second >> c)
            pairs.emplace_back(p);
        return pairs;
    }
};
template <typename T>
Matrix<T> Matrix<T>::transpose()
{
    Matrix ans = Matrix(row, col);
    for (int i = 0; i < row; i++)
        for (int j = 0; j < col; j++)
            ans[i][j] = matrix[j][i];
    return ans;
}

template <typename T>
vector<T> &Matrix<T>::operator[](size_t row)
{
    return matrix[row];
}
template <typename T>
Matrix<T> Matrix<T>::operator*(const Matrix &m)
{
    if (row != m.col)
    {
        std::cerr << "can not do product operation" << std::endl;
        exit(1);
    }
    Matrix ans(col, m.row);
    for (int i = 0; i < row; i++)
        for (int j = 0; j < m.col; j++)
            for (int k = 0; k < col; k++)
                if (std::is_same<bool, T>::value)
                {
                    //参数对象不能调用非const的成员函数,matrix[i][j]可写作(*this)[i][j]
                    if (ans[i][j] = matrix[i][k] & m.matrix[k][j])
                        break;
                }
                else
                    ans[i][j] = ans[i][j] + matrix[i][k] * m.matrix[k][j]; //没有布尔vector元素与int的+=运算,虽然T为bool类型时不会进入这条语句，但编译时会检测到并报错
    return ans;
}
template <typename T>
Matrix<T> Matrix<T>::operator*=(const Matrix &m)
{
    return *this = *this * m;
}
template <typename T>
Matrix<T> Matrix<T>::power(size_t size)
{
    if (row != col || size < 0)
    {
        std::cerr << "can not do power" << std::endl;
        exit(1);
    }
    Matrix ans = *this;
    if (size == 0) //0次返回单位矩阵
        return Matrix(row);
    else
    {
        size--;
        while (size--)
            ans *= *this;
    }
    return ans;
}
template <typename T>
Matrix<T> Matrix<T>::operator+=(const Matrix &m)
{
    return *this = *this + m;
}
template <typename T>
Matrix<T> Matrix<T>::operator+(const Matrix &m)
{
    if (row != m.row || col != m.col)
    {
        std::cerr << "can not do add operation" << std::endl;
        exit(1);
    }
    if (std::is_same<bool, T>::value)
        return *this | m;
    Matrix ans(row, col);
    for (size_t i = 0; i < row; i++)
        for (size_t j = 0; j < col; j++)
            ans[i][j] = matrix[i][j] + m.matrix[i][j];
    return ans;
}
template <typename T>
Matrix<bool> Matrix<T>::operator|(const Matrix<bool> &m)
{
    if (row != m.row || col != m.col)
    {
        std::cerr << "can not do & operation" << std::endl;
        exit(1);
    }
    Matrix<bool> ans(row, col);
    for (int i = 0; i < row; i++)
        for (int j = 0; j < col; j++)
            ans[i][j] = matrix[i][j] | m.matrix[i][j];
    return ans;
}
template <typename T>
Matrix<bool> Matrix<T>::operator|=(const Matrix<bool> &m)
{
    return *this = *this | m;
}
template <typename T>
Matrix<bool> Matrix<T>::operator&=(const Matrix<bool> &m)
{
    return *this = *this & m;
}
template <typename T>
Matrix<bool> Matrix<T>::operator&(const Matrix<bool> &m)
{
    if (row != m.row || col != m.col)
    {
        std::cerr << "can not do & operation" << std::endl;
        exit(1);
    }
    Matrix<bool> ans(row, col);
    for (int i = 0; i < row; i++)
        for (int j = 0; j < col; j++)
            ans[i][j] = matrix[i][j] & m.matrix[i][j];
    return ans;
}

template <typename T>
Matrix<T> Matrix<T>::operator-=(const Matrix &m)
{
    return *this = *this - m;
}
template <typename T>
Matrix<T> Matrix<T>::operator-(const Matrix &m)
{
    if (row != m.row || col != m.col)
    {
        std::cerr << "can not do subtraction operation " << std::endl;
        exit(1);
    }
    Matrix ans(row, col);
    for (size_t i = 0; i < row; i++)
        for (size_t j = 0; j < col; j++)
            ans[i][j] = matrix[i][j] - m.matrix[i][j]; //不声明友元类则不能访问bool实例的peivate成员
    return ans;
}
template <typename T>
std::ostream &operator<<(std::ostream &out, const Matrix<T> &m)
{
    for (size_t i = 0; i < m.row; i++)
    {
        for (size_t j = 0; j < m.col; j++)
            out << std::setw(3) << std::setiosflags(std::ios::left) << m.matrix[i][j] << ' ';
        out << std::endl;
    }
    return out;
}
template <typename T>
Matrix<int> Matrix<T>::getInt()
{
    Matrix<int> ans(row, col);
    for (int i = 0; i < row; i++)
        for (int j = 0; j < col; j++)
            ans[i][j] = matrix[i][j];
    return ans;
}
