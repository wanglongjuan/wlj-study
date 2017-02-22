### N-S 方程关于流体

### 1.1 欧拉坐标和拉格郎日坐标

让我们开始用欧拉坐标和拉格郎日坐标. 欧拉坐标 $(x, t)$ 是物理空间加时间.
关于流体的欧拉描述是使用作为空间位置 $x$ 和 时间 $t$ 的函数的量来描述流量.
流速为 $u(x, t)$. 这个可视化可以通过坐在河岸上, 看着水流通过一个固定的位置.
控制流的方程将主要写在欧拉坐标中求解.


相反, 拉格郎日描绘的是坐在船上并顺着船漂流. 为了使其精确, 让我们引入参考坐标
$\xi$, 其可被认为是(非常精细的)均匀网格. 每个单元的流体包裹,
其是由合理的微观颗粒(分子和原子)组成的非常少量的流体. 流体包裹的尺寸足够大,
使得平均量保持有意义. 同时, 与所考虑的流量的尺寸相比较小, 使得其可以被认为是点.


我们假设流量从参考配置开始并映射到其变形配置, 数学它被描述为映射, 称为流谱,
从欧拉参考坐标

$$
X(\dot, t) : R^n \to R^n, and \quad X(\dot, o) = 恒等映射
$$

即 $x = X(\xi, t)$ 是时间 $t$ 的空间位置 $\xi$ 包裹在欧拉坐标中,
这种映射是一对一的, 并假设是光滑的(至少是连续且可微的).

拉格郎日坐标是 $(X(\xi, t), t)$ 一个包裹, 标记为 $\xi$, 可以被认为是一个小船,
$X(\xi, t)$ 是在时间 $t$ 沿河漂流的船的位置.
描述坐在船中的流量等价于使用移动坐标 $(X(\xi, t), t)$.

虽然欧拉坐标中的计算更容易, 但物理定律更容易在参考坐标中描述. 举个例子, 由于
$X((\xi, t), t)$ 表示包裹在空间中的位置, 其相对于 $t$ 的导数将表示包裹 $\xi$
的速度, 我们表示 

$$
\tilde{u} (\xi, t) = \frac{\partial x}{\partial t} (\xi, t)
$$

我们现在推进函数到欧拉坐标. 映射 $X$ 是一对一的. 所以我们可以写

$$
\xi = (\xi, t) := X^{-1} (x, t)
$$

其中 $X^{-1} (\dot, t): R^n \to R^n$ 是从欧拉坐标到参考坐标的映射. 因此
$$
u(x, t) = \tilde{u} (\xi (x, t), t) 或者 \tilde{u} (\xi, t) = u(\xi(x, t), t)
$$
忽略滥用符号, $~$ 通常跳过, 等等. 我们使用 $u(x, t)$ 和 $u(\xi, t)$ 来表示不同坐标中的速度. 相同的约定适用于大多数函数.

另一方面, 给出一个光滑的向量 $u(x, t)$ 在欧拉坐标, 我们可以解ODE方程组
$$
\frac{d}{dt}X(\xi, t) = u(X(\xi, t), t), t>0, X(\xi, 0) = \xi
$$
找到 $X(\xi, t)$ 每个流体微团 $\xi$ 在任何时间 $t$ 的位置. 因此, 满足对 $u$ 求导的方程并求解欧拉坐标中的 $u$.

为了保存符号, 我们仍利用 $x$ 用于映射 $X$ (避免键入大写字母, 并假设函数 $f(x)$ 比 $F(x)$ 更好). 当使用导数时这个可能导致混乱, 在欧拉坐标中, $x$ 和 $t$ 是独立变量, 而在拉格郎日坐标 $(x(\xi, t), t) = (X(\xi, t), t)$. 空间变量是关于 $t$ 的函数. 为了避免这些困惑, 让我们对其从欧拉坐标到拉格郎日坐标进行改变, 并改变量为 
$$
x = x(\xi, \tau), t= \tau
$$

其中, 我们使用不同的变量 $\tau$ 来表明在拉格郎日坐标 $(x(\xi, \tau), \tau)$ 中, 空间和时间变量是独立的. $x$ 与 $t$ 是无关的(在欧拉坐标中) 但是与 $\tau$ 相关的.

我们总结不同的坐标如下:

1. 欧拉坐标$(x, t)$
2. 拉格郎日坐标 $(x(\xi, t), t) = x((\xi, \tau), \tau)$
3. 参考坐标 (例如 $\tau = 0$ 在拉格郎日坐标中) $\xi$

### 物质导数

$f(x, t)$ 是欧拉坐标中的函数, 坐标 $(x,t)$ 中的偏导数在规范意义下理解. 为了描述物理定律, 我们需要改变拉格郎日坐标 $(x(\xi, \tau), \tau)$. 通过链式规则, 我们有

$$
\frac{\partial}{\partial \tau} (f(x(\xi, \tau)), t(\tau)) = \nabla f \frac{\partial x}{\partial \tau} + f_t = u \dot \nabla f + f_t
$$

关于变量 $\tau$ 的导数, 即

$$
D_\tau := \frac{\partial }{\partial \tau} = (\partial_t + u \dot \nabla)
$$

被称作是物质导数. 这里的物质指的是 流体微团(拉格郎日坐标也称为物质坐标)

 物理上, 这意味着拉格郎日坐标中 $f$ (时间) 的变化量由两部分组成:时间变化和空间变化. 时间变化 $f_t$ 是在欧拉坐标中观察(静止坐标并且跟踪 $f$ 的时间变化率), 另一部分是由于移动坐标的空间变化:我们在不同的时间不同的位置.

在文章中通常表示为 $D_t$ 或 $\frac{d}{dt}$. 我们使用 $D_\tau$ 来强调所有物理定律在拉格郎日坐标中描述, 举个例子, 因为 $u$ 是速度, 所以 $D_\tau u = u_t + (u \dot \nabla) u$ 是流体微团 $\xi$ 的加速度.

让我们取参考区域中的任意域 $\Omaga_0$,  并且表示为 $\Omaga_\tau := X(\Omaga_0, \tau) = \{x : x= x(\xi, \tau), \xi \in \Omaga_0\}$ 作为 $\Omaga$ 在时间 $\tau$ 上的变形域.

我们现在得到欧拉坐标中积分 $\int_{\Omaga_\tau f(x, t) \mathrm dx}$ 的物质导数的公式. 除了 $f$ 的导数, 我们必须考虑
  相对于 $\tau$ 的区域 $\Omaga_\tau$ 的变化.

**引理1.1** 令 $J(\xi, t)=(\frac{dx}{d \xi})=(\frac{\partial x_i}{\partial \xi_j}), ij=1,n$ 是关于流体映射的雅克比矩阵, 又令 $|J| = det J$ 是雅克比矩阵. 因此, $\partial_\tau |J| = |J| div u(3)$

**证明** 通过改变变量,$\Omaga$ 的体积是

$$|\Omaga_\tau| = \int_{\Omaga_0} |J| \mathrm d\xi$$

然而我们计算

$$\partial_\tau |\Omaga_\tau| = \lim_{\Delta} \frac{|\Omaga_{\tau+\Delta \tau}|-|\Omega_\tau|}{\Delta \tau}$$

关键的观察结果是体积的变化等于边界的面积

$$|\Omega_{\tau+\Delta \tau}|- |\Omega_\tau| = \int_{\partial \Omega_\tau} (\Delta \tau) u \dot n \mathrm ds$$

因为边界粒子以 $\Delta t$ 时间步长以速度 $u n$ 在法线方向上移动. 

我们有

$$\int_{\Omega_0} \partial_\tau |J| \mathrm d \xi = D_\tau |\Omega_\tau| = \int_{\Omega_\tau} div u \mathrm dx = \int_{\Omega_0} div u |J|\mathrm d\xi$$

**练习 1.2** 令 $A(t)$ 是可逆的并且关于 $t$ 可微, 证明 

$$\frac{d}{dt} det A(t) = det A tr(A^{-1}\frac{d}{dt} A(t))$$

从上式导出(3)

**定理 3** (传输定理) 对于光滑函数 $f(x, t)$, 我们有
(5)   $$\frac{d}{d\tau}(\int_{\Omega_\tau} f(x, \tau)\mathrm dx)=\frac{d}{dt}(\int_{\Omega_0} f(x(\xi,\tau), \tau)|J| \mathrm d\xi)=\int_{\Omega_0}D_\tau f(x(\xi, \tau), \tau)|J| \mathrm d\xi + \int_{\Omega_0}f(x(\xi, \tau), \tau) \partial |J| \mathrm d\xi =\int_{\Omega_0}(f_t + u \nabla f + f div u)|J| \mathrm d\xi = \int_{\Omega_\tau (f_t + \nabla (fu))\mathrm dx  $$
  

































