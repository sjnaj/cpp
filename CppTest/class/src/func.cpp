/*
 * @Author: fengsc
 * @Date: 2021-10-06 22:38:44
 * @LastEditTime: 2021-10-17 00:29:54
 */
#include "func.h"
void Complex::display() const
{
    if (m_imag == 0 && m_real == 0)
    {
        std::cout << '0' << std::endl;
        return;
    }
    if (m_real)
        std::cout << m_real;
    if (m_imag)
        std::cout << setiosflags(std::ios::showpos) << m_imag << 'i' << resetiosflags(std::ios::showpos);
    std::cout << std::endl;
}
void Complex::display(const Complex &A)
{
    if (A.m_imag == 0 && A.m_real == 0)
    {
        std::cout << '0' << std::endl;
        return;
    }
    if (A.m_real)
        std::cout << A.m_real;
    if (A.m_imag)
        std::cout << setiosflags(std::ios::showpos) << A.m_imag << 'i' << resetiosflags(std::ios::showpos);
    std::cout << std::endl;
}
void Complex::displayExp() const
{
    std::cout << this->abs();
    double angle = this->arg();
    if (angle)
        std::cout << "e^(i" << angle << ')';
    std::cout << std::endl;
}
void Complex::displayExp(const Complex &A)
{
    std::cout << A.abs();
    double angle = A.arg();
    if (angle)
        std::cout << "e^(i" << angle << ')';
    std::cout << std::endl;
}
Complex Complex::operator+(const Complex &A) const
{
    return Complex(A.m_real + this->m_real, A.m_imag + this->m_imag);
}
Complex operator+(const double a, const Complex &A)
{
    return Complex(A.m_real + a, A.m_imag);
}
Complex Complex::operator-(const Complex &A) const
{
    return Complex(this->m_real - A.m_real, this->m_imag - A.m_imag);
}
Complex Complex::operator*(const Complex &A) const
{
    return Complex(A.m_real * this->m_real - A.m_imag * this->m_imag, A.m_imag * this->m_real + A.m_real * this->m_imag);
}
Complex Complex::operator/(const Complex &A) const
{
    double denom = A.m_imag * A.m_imag + A.m_real * A.m_real;
    return Complex((A.m_real * this->m_real + A.m_imag * this->m_imag) / denom, (A.m_real * this->m_imag - A.m_imag * this->m_real) / denom);
}
Complex Complex::operator+=(const Complex &A)
{

    this->m_real += A.m_real;
    this->m_imag += A.m_imag;
    return *this;
}

Complex Complex::operator-=(const Complex &A)
{
    this->m_real -= A.m_real;
    this->m_imag -= A.m_imag;
    return *this;
}
Complex Complex::operator*=(const Complex &A)
{
    double tmp = this->m_real * A.m_imag + this->m_imag * A.m_real; //源码yyds
    this->m_real = this->m_real * A.m_real - this->m_imag * A.m_imag;
    this->m_imag = tmp;
    return *this;
    /* double tmp1 = this->m_real, tmp2 = A.m_real; //tmp1防止this->m_real被覆盖，tmp2防止x*=x的情况
    this->m_real = (tmp1 * tmp2 - A.m_imag * this->m_imag);
    this->m_imag = (A.m_imag * tmp1 + tmp2 * this->m_imag);*/
}
Complex Complex::operator/=(const Complex &A)
{
    double tmp = A.m_real * this->m_imag - this->m_real * A.m_imag;
    this->m_real = this->m_real * A.m_real + this->m_imag * A.m_imag;
    this->m_imag = tmp;
    return *this;
}
Complex &Complex::operator[](int i)
{
    if (seq && i < m_len)
        return seq[i];
    else
        throw std::out_of_range("Out Of Range");
}
Complex &Complex::operator=(const Complex &A)
{
    this->m_real = A.m_real;
    this->m_imag = A.m_imag;
    return *this;
}
Complex::Complex(const Complex &A)
{
    if (!A.seq)
    {
        this->m_imag = A.m_imag;
        this->m_real = A.m_real;
    }
    else
    {
        this->m_len = A.m_len;
        this->seq.reset(new Complex[m_len]);//m_len为0也能正常运行，但定义数组时不行
        for (int i = 0; i < A.m_len; i++)
            this->seq[i] = A.seq[i]; //(待定)
    }
}
Complex::Complex(Complex &&A)
{
    if (!A.seq)
    {
        this->m_imag = A.m_imag;
        this->m_real = A.m_real;
    }
    else
    {
        this->m_len = A.m_len;
       this->seq = move(A.seq);
    }
}
const Complex &Complex::operator[](int i) const
{

    if (m_len)
        return seq[i];
    else
    {
        std::cout << "illegal access" << std::endl;
        return *this;
    }
}
bool Complex::operator==(const Complex &A) const
{
    return (A.m_real == this->m_real) && (A.m_imag == this->m_imag);
}
bool Complex::operator!=(const Complex &A) const
{
    return (A.m_real != this->m_real) || (A.m_imag != this->m_imag);
}
double Complex::abs() const
{
    return sqrt(this->m_real * this->m_real + this->m_imag * this->m_imag);
}
double Complex::arg() const
{
    return atan2(this->m_imag, this->m_real) * 180 / PI;
    //atan值域为(-90,90).
}
Complex Complex::conjugate()
{
    return Complex(m_real, 0 - m_imag);
}
Complex::operator double() const
{
    return m_real;
}
std::istream &operator>>(std::istream &in, Complex &A)
{
    in >> A.m_real >> A.m_imag;
    return in;
}
std::ostream &operator<<(std::ostream &out, const Complex &A)
{
    if (A.m_imag == 0 && A.m_real == 0)
        out << '0';
    else
    {
        out.precision(4);
        if (A.m_real)
            out << A.m_real;
        if (A.m_imag)
        {
            out.setf(std::ios::showpos);
            out << A.m_imag << 'i';
            out.unsetf(std::ios::showpos);
        }
    }
    return out;
}
