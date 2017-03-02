#### Charter4

**优化问题**

$$\begin{align}  &minimize \quad & f_0(x)&  \\  &subject \quad to \quad & f_i(x) &\leq 0, i = 1,…,m \\  & &h_i(x)& = 0,i=1,…,p \end{align} \qquad (4.1)$$ 

描述在所有满足$f_i(x) \leq 0,i=1,…,m$ 以及$h_i(x)=0,i=1,…,p$ 的x中寻找极小化$f_0(x)$ 的x的问题。

问题(4.1)的最优值$p^*$ 定义为：

$$p^* = inf\{f_0(x)| f_i(x) \leq 0,i=1,…,m, h_i(x)=0,i=1,…,p\}$$ 

(4.1)称为优化问题的标准形式。

**松弛变量**

$$\begin{align} &minimize  &f&_0(x) \\  &subject \quad to \quad  &s& _i  \geq 0,i=1,…,m \\& & f&_i(x)+s_i=0,i=1,…,m \\& & h&_i(x) = 0,i=1,…,p\end{align}$$ 

**消除等式约束**

令$$F \in R^{n \times k} $$ 为满足$$\cal R(F) = \cal N(A) $$ 的矩阵，那么线性方程$$Ax=b$$ 的通解可以表示为$$Fz+x_0 $$ ，可以找到与原问题等价的约束问题，并且减少了$\mathbf{rank}A$ 个变量

**Optimizing over some variables 在某些变量上的优化问题** 

我们总是有以下等式成立： $$\inf\limits_{x,y} = \inf\limits_{x} \overline{f}(x)$$ 

在这里$\overline{f}(x) = \inf\limits_{y} f(x,y) $ ，也就是说我们可以在保持某些变量不变的情况下，通过最小化其他的变量来最小化某个函数。这种简单但是普遍的关系能够用来将某些问题转换成等价的形式。常见的情况描述起来很麻烦而且不能说明问题，所以我们用另外一个例子来进行描述。

假设变量$x\in R^n$ 可以被划分为$(x_1,x_2)$ ，在这里$x_1\in R^{n_1} , x_2 \in R^{n_2}$ ，并且我们有$n_1+n_2 = n$ ，我们可以考虑如下的问题：

$$\begin{align} & minimize  &f&_0(x_1,x_2)  \\ & subject \quad to \quad  &f&_i(x_1) \leq , i = 1,…,m_1 \\ & &\tilde{f}&_i  (x_2) \leq 0 ,i=1,…,m_2 \end{align} $$ 

波浪线 \tilde $\tilde{f}$ 

**Epigraph problem form** 

上境图形式问题，用上境图的形式来表示标准问题(4.1)，可以被写为：

$$\begin{align} &minimize  &t& \\ & subject \quad to \quad &f&_0(x)-t \leq 0 \\ &&f&_i(x) \leq 0,i=1,…,m \\ &&h&_i(x) = 0,i=1,…,p \end{align}$$

**隐式和显式约束** 

一般可以将隐式通过加入约束变量来变为显式，也可以将显式通过函数约定来变为隐式

**参数和Oracle 问题** 
对于标准形式的问题(4.1)，一般的目标和约束函数都是具有解析或者是闭式表达式，

假定参数的表达式有以下的形式：$$f_0(x) = (1/2) x^T Px+q^T x+r$$ ，在这里的系数$P \in S^n ,q\in R^n， and \quad r\in R $ 

被称为是参数问题描述

Oracle problem 中无法准确地得知$f$ 的形式，但是可以估计对于任何$x\in dom f$ 的$f(x)$ 。也就是仅仅可以通过调用子函数来进行某些$x \in dom f $ 的参数的计算。相当于是一个被封装的类，并且只能通过一些内部函数来调用，却没有办法得到关于类的所有信息。

**Convex Optimization** 

凸优化必须满足三个条件：

* 目标函数必须是凸的
* 不等式约束必须是凸的
* 等式约束$h_i(x) = a_i^T x-b_i $ 必须是仿射

**Local and global optima 局部和全局优化**

凸优化问题的一个最基本的性质就是对于任何局部最优点，它也是全局最优点。

但是对于拟凸函数和优化问题这个性质是不成立的

**An optimality criterion for differentiable $f_0$**

feasible set 可行集

假设在一个凸优化问题中目标函数$f_0$ 是可微的，那么对于$x,y\in \mathbf{dom} f_0$ ，我们有

$$f_0(y) \geq f_0(x) + \nabla f_0(x)^T (y-x)$$ (泰勒公式的展开证明)

让$X$ 表示可行集，$i.e.$ $$X =\{ x|f_i(x)\leq 0, i = 1,…,m,h_i(x)=0,i=1,…,p \}$$ 

对于一个在可行集$X$ 上可微的目标函数$f_0$ ，那么x是最优点，当且仅当 $x\in X$ ，且有$\nabla f_0(x)^T (y-x) \geq 0\quad for \quad all\quad  y \in X$ 

对于一个无约束问题，它的充分必要条件是 $\nabla f_0(x)=0$ 

**仅有等式约束的问题** 

考虑以上的关系$ \nabla f_0(x)^T (y-x) \geq 0$ ，必定有一些$y = x+v \quad for \quad v \in \cal N(A)$ 

也就是说$\nabla f_0(x) +A^T \nu=0$ 

**Minimization over the nonegative orthant ** 

在满足目标函数$f(x)$ 的变量$x \succeq 0$ 的时候，我们必须要有$\nabla f_0(x)^T x=0$ 

**quasiconvex optimization** 

拟凸的优化问题，与凸优化问题最大的区别在于其目标函数$f_0(x)$ 是拟凸的。

他的一阶最优条件将变为：
$$x \in X ,\quad \nabla f_0(x) ^T (y-x)  >0 \quad for\quad all \quad y \in X \setminus  \{x\}$$  



