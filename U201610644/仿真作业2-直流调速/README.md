# 仿真作业2-直流调速

     机卓1601 姚尧 U201610644    

---
### 一. 建立单闭环调速模型

##### 1. 在原先的模型上，建立单闭环调速模型
<div align=center>

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业2-直流调速/figure/system_2.png )
</div>
参考之前阅读资料中的系统图

<div align=center>

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业2-直流调速/figure/system_1.png )
</div>


通过转速反馈控制输入电压，加入简单的单位负反馈

<div align=center>

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业2-直流调速/figure/system_3.png )
</div>

注： 
·添加比例增益和积分增益  
··在比例增益和积分环节之前将单位rpm换算到rad/s  
···在比例增益和积分环节之前由 **E = kw** 将转速换算成电压  

此外:  
个人认为用电流调速会比较好，可是题目要求是用控制器的输出信号控制Controlled Voltage Source


### 二. 单闭环调速系统算法仿真
##### 1. 确定增益值

采用纯比例P控制，改变比例增益，使得速度阶跃响应超调量为5%和20%，并记录对应比例增益值Kp1和Kp2。

以下为计算超调量matlab函数脚本：

```
%计算超调
y = temp_motn.values*9.55;
x = temp_mott.time;

ymax = max(y);
l = length(x);
ysta = mean(y(500:1000));

over = ymax/ysta-1;
over

```
得到相应的比例增益： 
kp1 = 0.0003 超调量为 9.44%   
kp2 = 0.0086 超调量为20.01%



##### 2. 求电机的速度静态误差

以下是计算电机静态误差的matlab函数脚本

```
%计算速度静态误差
e = 1000 - ysta;
e
```
**空载条件下：**

对于kp1 = 0.0003，静态误差为：97.3%  
对于kp2 = 0.0086， 静态误差为：56.1%

同时附上相应示波器所示波形图
<div align=center>

![kp1 =0.0003](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业2-直流调速/figure/sensor_1.png )
</div>
<center>kp1 = 0.0003</center>

<div align=center>

![kp2 =0.0086](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业2-直流调速/figure/sensor_2.png )
</div>
<center>kp2 = 0.0086</center>

**额定负载下：**

对于kp1 = 0.0003，静态误差为：100% 此时电机带不动负载  
对于kp2 = 0.0086 静态误差为：58.3% 

同时附上相应示波器所示波形图
<div align=center>

![kp1 =0.0003](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业2-直流调速/figure/sensor_3.png )
</div>
<center>kp1 = 0.0003</center>
<div align=center>

![kp2 =0.0086](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业2-直流调速/figure/sensor_4.png )
</div>
<center>kp2 = 0.0086</center>

注：
·通过上述仿真可以发现单纯的比例增益对系统的调节性能不是很好，虽然可以降低超调，降低振荡次数，但是稳态误差会大幅增加，同时超调量调整到10%左右就调不下去了。


### 三. PI控制器及相关计算
##### 1. 调节较为合理的比例和积分增益
通过调整，选取比例增益kp = 0.002， 积分增益ki = 0.04
系统图：
<div align=center>

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业2-直流调速/figure/pid_1.png )
</div>

示波器波形图:
<div align=center>

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业2-直流调速/figure/pid_2.png )
</div>

##### 2. 计算超调量和过渡时间

计算超调的代码如前
计算过渡时间的matlab代码为：
```
% 代码中变量矩阵由之前的代码计算得到
ts = x(max(find(y<0.95*ysta)));

%具体可见文件中的计算script
```
最后计算得出 **超调量为 1.2845e-09;**    
误差0.05的 **过渡时间 ts = 0.577s;**