#### Charter5 对偶

##### 5.1 Lagrange 对偶函数

考虑标准形式的优化问题：

$$\begin{align} &minimize &f&_0(x) \\ &subject \quad to &f&_i(x) \leq 0 ,i = 1,…,m \\  &&h&_i(x)=0,i=1,…,p \end{align}\qquad (5.1)$$

Lagrange对偶的基本思想是在目标函数中考虑问题的约束条件，添加约束条件的加权和，得到增广的目标函数：

$$L(x,\lambda,\nu) = f_0(x) + \sum\limits_{i=1} ^m \lambda_i f_i(x) + \sum\limits_{i=1} ^p \nu_i h_i (x) $$ 

向量$\lambda$ 和$ \nu$ 被称为是对偶变量或者是Lagrange的乘子向量

定义Lagrange对偶函数$g : R^m \times R^p \rightarrow R$ 为Lagrange函数关于x取得的最小值。对偶函数是一族关于$(\lambda , \nu) $ 的仿射函数的逐点下确界，**即使原问题不是凸的，对偶函数也是凹函数** 

对偶函数构成了原问题（5.1）的最优值$p^*$ 的下界：即对任意$\lambda \succeq 0$ 和$\nu$ 下式成立：

$g(\lambda,\nu) \leq p^* $ 

##### Lagrange对偶函数和共轭函数

 函数$f:R^n \rightarrow R$ 的共轭函数$f^*$ 为： $f^* (y) = \sup\limits_{x \in \mathbf{dom}f} (y^Tx - f(x)) $ 

对于范数问题，$f_0 = || \cdot ||$其共轭函数的定义是：
$$
f_0^*(y) = \begin{cases}  0, &||y|| \leq 1  \\ \infty  &其他情况 \end{cases}
$$

##### Lagrange对偶问题

对于任意一组$(\lambda , \nu) $ ，Lagrange对偶函数给出优化问题的最优值$p^*$ ，现在需要的时候关于参数$\lambda,\nu$ 相关的一个下界的最好下界

可以表示为优化问题：
$$
\begin{align}   &maximaize   &g(\lambda,\nu)  \\ &subject \quad to  & \lambda \succeq 0    \end{align}
$$
上述问题是Lagrange对偶问题。

**显式表达对偶约束**

对偶函数的定义域:
$$
\mathbf{dom}   g = \{  (\lambda,\nu) | g(\lambda,\nu) >  - \infty \}
$$
一般的维数在m+p之上。标准形式的线性规划问题：
$$
\begin{align} & minimize  &c&^Tx \\ & subject \quad to &A&x=b \\  &&x& \succeq 0\end{align}
$$
其Lagrange对偶函数为：
$$
g(\lambda ,\nu) = \begin{cases}  -b^T\nu & A^T\nu - \lambda +c = 0 \\ - \infty & 其他情况 \end{cases} 
$$
其中应该要满足$\lambda \succeq 0$

