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

**通过凸性可行问题求解拟凸优化**

我们通常处理拟凸问题的方法在于将**通过一族凸不等式来表示拟凸函数的下水平集** 

令$\phi_t:R^n \rightarrow R , t \in R$ 为满足$f_0(x) \leq t \Leftrightarrow  \phi_t(x) \leq 0$ 的一族凸函数，并且对于每一个x，$\phi_t(x)$ 都是t的非增函数。

**线性规划问题**

Chebyshev 不等式

考虑含有n个元素的集合$\{ u_1,…,u_n \} \subseteq R$  上的离散随机变量x的概率分布。我们用向量$p \in R^n $ 来描述x的分布：

$p_i = \mathbf{prob} (x=u_i) $ 我们假设$u_i$ 是已知的而且不变的，但是分布$p$ 未知

$\mathbf{prob} (x\in S)  = \sum\limits_{u_i \in S} p_i $ 

另外还可以定义分片线性极小化： 考虑极小化分片线性凸函数的问题： $$f(x) = \max\limits_{i=1,…,m}(a_i^T x + b_i)$$ 



**线性分式规划**

在多面体上极小化仿射函数之比的问题被称为是线性分式规划问题：

$$\begin{align} & minimize \quad  &f&_0(x) \\  &subject \quad to  &G&x \preceq h\\   & &A&x = b \end{align}$$ 

其目标函数由下面表示：

$$f_0(x) = \frac{c^T x +d} {e^T x +f} , \mathbf{dom} f_0 = \{ x|e^T x +f>0 \} $$ 

这个优化问题是拟凸的，所以我们需要将其变为线性规划问题

其等价的线性规划问题是：

$$\begin{align} &minimize  &c&^T y +dz  \\  &subject \quad to  &G&y-hz \succeq 0 \\  &&A&y-bz = 0 \\   &&e&^T y +fz = 1 \\  &&z& \geq 0 \end{align} $$ 



**二次优化问题**

二次规划可以表述为：$$\begin{align}&minimize \quad  &(1/2) &x^T P x+q^T x+r \\ &subjetc \quad to \quad &G&x\preceq h \\ &&A&x = b \end{align} $$

如果其不等式约束也是凸二次型，也就是$(1/2) x^T P_i x +q_i^T x +r_i \leq 0$ 

这个问题被称为是二次约束的二次规划问题。在椭圆构成的交集所形成的可行集上来极小化凸二次函数。

**二维锥规划** 

SOCP：$$\begin{align}&minimize  &f&^Tx \\ &subject \quad to &\|& A_ix +b_i\| \leq c_i^T x+d_i,i = 1,…,m \\ &&F&x = g  \end{align} $$

A的约束被称为是二次锥约束，要求仿射函数$(Ax+b,c^T x+d) $ 在$R^{k+1} $ 的二阶锥中

**极小表面** 

考虑可微函数$f:R^n \rightarrow R$ ，并且$\mathbf{dom} f = C$ ，其图像的表面积由下式给出：

$A = \int_C \sqrt{1+\| \nabla f(x) \|_2^2} dx = \int_C \|(\nabla f(x),1) \|_2 dx $

而极小化表面问题是在某些约束情况下，寻找$f$ 以极小化$A$ 

而$f$的导数可以通过向前差分来近似计算：

$\nabla f(x) = K\biggl[\begin{align} f_{i+1,j} -f_{i,j} \\ f_{i,j+1}-f_{ij} \end{align} \biggr]$



#### 几何规划

函数$f:R^n \rightarrow R,\mathbf{dom}f = R_{++}^n$  定义为 $f(x)  = c x_1 ^{a_1} \dots  x_n^{a_n}$ 被称为是单项式函数。

而正项式函数为$f(x) = \sum\limits_{k=1}^K c_k x_1^{a_{1k}} \dots x_n^{a_{nk}} $ 

几何规划问题：$$\begin{align} &minimize  &f&_0(x) \\ &subject \quad to \quad &f&_i(x) \leq 1,i=1,…,m \\ &&h&_i(x) = 1,i=1,…p \end{align} $$  

其中$f_0,…,f_m$ 是正项式，$h_1,…,h_p$ 是单项式

**凸形式的几何规划**

用$y_i = log x_i$ 来定义变量，则$f(x) = e^{a^T y +b}，其中b =log c $  

运用这种方法，并且将对数函数与目标函数和约束函数进行转换，得到问题:

$$\begin{align} &minimize  &\tilde{f_0}&(y) = log(\sum\limits_{k=1}^{K_0} e^{a_{0k}^Ty+b_{0k}}) \\ &subject\quad to &\tilde{f_i}& (y) = log(\sum\limits_{k=1}^{K_i} e^{a_{ik}^T y +b_{ik}}) \leq 0 , i=1,…,m \\ &&\tilde{h}&_i(y) = g_i^T y +h_i = 0, i=1,…,p \end{align} $$ 

这是一个凸优化问题，称之为正项式形式的几何规划

通过Perron-Frobenius 定理极小化谱半径

设矩阵$A \in R^{n\times n} $  的元素非负。并且不可约简，也就是说矩阵$(I+A)^{n-1} $ 的元素非负。A具有等于其谱半径，也就是特征值的最大幅值的正实数特征根$\lambda_{pf}$ 

$\lambda_{pf} = inf\{\lambda| A\nu \preceq \lambda \nu 对某些\nu \succeq 0 \}$ 



#### 广义不等式约束

通过将不等式约束函数拓展为向量并且使用广义不等式，可以得到标准形式凸优化问题的一个推广：

$\begin{align} &minimize &f&_0(x) \\ &subject \quad to &f&_i(x) \preceq_{\cal K_i} 0 ,i=1,…,m\\ &&A&x=b  \end{align}$

广义不等式意义下的凸优化问题

标准形式的锥形式问题：

$$\begin{align} &minimize &c&^Tx \\  &subject \quad to &x& \succeq_{K} 0 \\ &&A&x=b \end{align} $$ 

不等式形式的锥形式问题：

$$\begin{align} &minimize  &c&^T x  \\ &subject \quad to &F&x +g \preceq_K 0 \end{align} $$ 









 .







