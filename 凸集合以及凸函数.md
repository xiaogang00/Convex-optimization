##### 共轭函数

设函数$f$ ：$R^n \rightarrow R$ ，定义函数$f^*$ :$R^n \rightarrow R$ 为

$f^*(y) = \sup\limits_{x \in dom f} (y^Tx - f(x))$ 

称为函数$f$ 的共轭函数。即差值$y^Tx-f(x)$ 在$\mathbf{dom}f$ 有上界的所有$y\in R^n$ 构成了共轭函数的定义域。

$f^*$ 是凸函数，因为它是一系列$y$ 的凸函数的逐点上确界。无论$f$ 是否是凸函数，$f^*$ 都是凸函数。

对数行列式。在$S_{++}^n$ 上定义的函数$f(X) = log\quad det(X^{-1})$  ，其共轭函数定义为：

$f^*(Y) = \sup\limits_{X\succ 0} (tr(YX)+log \quad det(X^{-1}))$ 

其定义域为$\mathbf{dom} f^* = -S_{++}^n$ ，且$f^*(Y) = \log det(-Y)^{-1} -n$ 

Fenchel 不等式 ： $f(x)+f^* (y) \geq x^Ty$ 



**共轭的共轭**  $f^{**} = f$ 

**可微函数**  可微函数$f$ 的共轭函数也被称为函数$f$ 的Legendre变换

如果函数$f$ 是凸函数而且是可微的，那么其定义域为$\mathbf{dom}f = R^n$ 

其$f^*(y) = x^{ *T} \nabla f(x^*) - f(x^*)$ 



##### 拟凸函数

函数$f:R^n \rightarrow R $ 被称为拟凸函数，如果其定义域以及所有下水平集

$S_{\alpha} = \{ x\in\mathbf{dom} f| f(x) \leq \alpha \}$  都是凸集。如果某函数既是拟凸函数又是拟凹函数，那么就称为拟线性函数

拟凸性是凸性地重要拓展，例如：函数$f$是拟凸函数的充要条件是，$\mathbf{dom} f$ 是凸集，且对于任意$x,y\in \mathbf{dom} f$ 以及$0 \leq \theta \leq 1$ 有$f(\theta x + (1- \theta) y) \leq max\{ f(x),f(y) \}$ 



**可微拟凸函数** 

* 设函数$f: R^n \rightarrow R$ 可微，则函数$f$ 是拟凸的充要条件是$\mathbf{dom} f$ 是凸集，且对于任意$x,y \in \mathbf{dom} f$ 有

  $f(y) \leq f(x) \Rightarrow \nabla f(x)^T(y-x) \leq 0$ 


* 假设函数$f$ 二次可微，如果函数$f$ 是拟凸函数，则对于任意$x\in \mathbf{dom} f$ 以及任意$y\in R^n$ ，有

  $y^T \nabla f(x) = 0 \Rightarrow y^T \nabla ^2 f(x) y \geq 0$ 


可以将拟凸函数$f$ 的下水平集表示成凸函数的不等式。选择一族图函数$\phi_t :R^n \rightarrow R,t \in R$ 表示的是凸函数的编号。这些函数满足$ f(x) \leq t \Leftrightarrow \phi_t(x) \leq 0$ ，也就是拟凸函数的t-下水平集是凸函数$\phi_t$ 的0-下水平集

并且需要满足的条件是$\phi_t(x) $ 是$t$ 的非增函数

**凸凹函数之比** 

设p是凸函数，q是凹函数，那么在凸集C上，$f(x) = p(x) /q(x)$ 是拟凸函数，此时可以选取$\phi_t(x) = p(x)-tq(x),t\geq 0$ 

**对数凹和对数凸** 

函数$f:R^n\rightarrow R$ 其定义域是凸集，且对于任意$x\in \mathbf{dom}f$ 有$f(x) > 0$ ，函数是对数-凹的，当且仅当对任意$x,y \in \mathbf{dom} f$ ，$0 \leq \theta \leq 1$ ，有$f(\theta x + (1-\theta) y ) \geq f(x)^{\theta } f(y) ^{1-\theta}$ 



 

