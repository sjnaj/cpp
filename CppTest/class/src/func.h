/*
 * @Author: fengsc
 * @Date: 2021-10-06 22:38:51
 * @LastEditTime: 2021-10-19 01:54:47
 */
//complex类源码：/usr/include/c++/9/complex
#pragma once
#include <iostream>
#include <cmath>
#include <iomanip>
#include <memory>
//#define PI acos(-1)
const double PI = acos(-1);
class ComplexPtr;
class Complex
{
    friend Complex operator+(const double a, const Complex &A);           //实现double+Complex,交换后亦可
    friend std::istream &operator>>(std::istream &in, Complex &A);        //加了const无法写入
    friend std::ostream &operator<<(std::ostream &out, const Complex &A); //不加const则无法输出右值
    friend class ComplexPtr;
public:
    Complex operator+(const Complex &A) const;
    // Complex operator+(const double a) const;//实现Complex+double，无法实现double加Complex
    Complex operator-(const Complex &A) const;
    Complex operator*(const Complex &A) const;
    Complex operator/(const Complex &A) const;
    Complex operator+=(const Complex &A);
    Complex operator-=(const Complex &A);
    Complex operator*=(const Complex &A);
    Complex operator/=(const Complex &A);
    bool operator==(const Complex &A) const;
    bool operator!=(const Complex &A) const;
    Complex &operator[](int i);
    const Complex &operator[](int i) const;
    explicit operator double() const;
    double abs() const;  //模长
    double arg() const;  //幅角
    Complex conjugate(); //共轭
    Complex(double x, double y) : m_real(x), m_imag(y) {}
    Complex() : m_real(0), m_imag(0) {}
    explicit Complex(double a) : m_real(a), m_imag(0) {}
    /*/两个都要声明为显式，在与数字运算的过程中会调用拷贝初始化将数字隐式转换为类，且会优先匹配不加explicit的那个*/
    explicit Complex(int len) : m_len(len), seq(std::make_unique<Complex[]>(len)) {}
    ~Complex() = default;
    Complex(const Complex &A);            //可拷贝带序列的对象
    Complex(Complex &&A);                 //移动构造
    Complex &operator=(const Complex &A); //专用于普通对象(不带序列的),免去复制指针和序列长度变量
    void display() const;
    void displayExp() const;
    static void displayExp(const Complex &A);
    static void display(const Complex &A); //左值常引用可以接收右值
                                           // static void display( Complex &&A);
    int size() const { return m_len; }

private:
    std::unique_ptr<Complex[]> seq;
    double m_real;
    Complex *m_ptr;
    union
    {
        int m_len;
        double m_imag;
    };
};
class ComplexPtr
{
private:
    Complex *m_ptr;
public:
    ComplexPtr() : m_ptr(nullptr) {}
    ComplexPtr(Complex *p) : m_ptr(p) {}
    ~ComplexPtr() { delete m_ptr; }
    Complex &operator*() const
    {
        return *m_ptr;
    }
    Complex* operator->() const
    {
        return m_ptr;
    }

    ComplexPtr(const ComplexPtr &p)
    {
       
        m_ptr=new Complex(*p);
    }
    ComplexPtr(ComplexPtr &&p)
    {
       m_ptr=p.m_ptr;
       p.m_ptr=nullptr;
    }
};