### 一. 建立单闭环调速模型
![接线图.png](https://i.loli.net/2019/04/15/5cb48bfb4b2ae.png)
</center>
（空载情况下）
kp1 = 0.0001 超调量为 9.14%

kp2 = 0.0022 超调量为20.17%

（负载情况下）
kp1 = 0.00035 超调量为 10.95%

kp2 = 0.0085 超调量为19.96%

### 二. 静态误差
**空载条件下：**

对于kp1 = 0.0001，静态误差为：99.10%

对于kp2 = 0.0022， 静态误差为：83.30%

**额定负载下：**

对于kp1 = 0.00035，静态误差为：93.18% 此时电机无法带动负载

对于kp2 = 0.0085 静态误差为：54.19% 

<center>

单纯的比例环节对系统的调节性能不是很好，虽然可以降低超调，但超调量调不到5%，稳态误差会大幅增加。

### 三. 比例积分PI控制
[![代码.png](https://i.loli.net/2019/04/15/5cb4944d9ccfd.png)](https://i.loli.net/2019/04/15/5cb4944d9ccfd.png)


比例增益kp = 0.0005

积分增益ki = 0.035

最后计算得出超调量为 9.9158e-08

误差0.05的过渡时间 ts = 0.5580s

[![响应曲线.png](https://i.loli.net/2019/04/15/5cb49478df18d.png)](https://i.loli.net/2019/04/15/5cb49478df18d.png)
