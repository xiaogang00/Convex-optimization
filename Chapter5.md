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

