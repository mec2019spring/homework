## # 仿真作业3-直流双闭环调速

     机卓1601 姚尧 U201610644    

---

### 一. 题目要求
<div align=center>

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业3-直流双闭环调速/figure/0.png )
</div>


### 二. 理想电流源单闭环

##### 1. 在原先的模型上，建立单闭环调速模型

使用理想电流源构建单闭环，采用比例积分控制，构建系统如下：

<div align=center>

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业3-直流双闭环调速/figure/3.png )
</div>

速度反馈输入电流，反馈信号为单位负反馈

注：  
· 与上一次仿真相比，省去了单位换算环节，此处的增益是**带有量纲的**。

##### 2. 与之前的模型进行对比

单闭环调速的仿真结果：

<div align=center>

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业3-直流双闭环调速/figure/4.png )
</div>

与之前的仿真结果进行对比

<div align=center>

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业2-直流调速/figure/pid_2.png )
</div>

**对比可知** ：  
1. 过渡时间明显变小。
2. 都没有超调（之前仿真是由于参数调整设定的没有超调）。
3. 静差都很小。

### 二. 较真实电流源的双闭环


##### 1. 在原先的模型上，建立双闭环调速模型

- 用电压源+PI控制器构造更接近真实的电流环，代替理想可调电流源。  
- 电流环和速度电流环的控制器都为PI控制器。

得到的系统图如下：
<div align=center>

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业3-直流双闭环调速-/figure/2.png )
</div>

调整系统增益，得到较为理想的阶跃响应曲线：

<div align=center>

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/仿真作业3-直流双闭环调速-/figure/1.png )
</div>

注：

1. 由图可知，**响应时间是2.27s** 由于系统参数较多，这是我调整出来的较为理想的时间。
2. 为了**减小静差**，将速度环的积分控制器的增益调整到很小。
3. 大约1.5s之前示波器上有一段曲线没能显示，可能是由于变化较快，示波器没显示出来。


##### 2. 与之前的模型进行对比

仿真2中的单闭环阶跃响应曲线、仿真3中的理想电流源的阶跃响应曲线如前可见。

对比可知，响应曲线较仿真二中的单闭环阶跃响应曲线更为平滑均匀，但是相对于之前的模型而言响应时间较长，容易有超调和静差。

说明对于真实系统而言，响应特性更加容易控制，但是相对与理想的模型仍有一定差距。
