# 直流调速
------

##1、单闭环调速系统模型搭建

下图为构建的单闭环直流调速系统，速度为反馈量，外加0到1000的阶跃输入。

![00](https://github.com/HUSTIChiaHu/photo/blob/master/00.png)

------

##2、仿真结果

### 1. 纯比例P控制

调节kp1值为0.85，此时超调量Mp=(488-407)/407=19.9%
波形如下图示：
![01](https://github.com/HUSTIChiaHu/photo/blob/master/01.png)


***减小kp值，可以使超调量减小，但kp从0.5到0.1，几乎都在16%左右,自0.08以下，甚至有增大趋势，无法调到kp只有5%，甚至都到不了10%。***

调节kp2值为0.3，Mp=26.7/193=13.8%
波形如下图示：
![02](https://github.com/HUSTIChiaHu/photo/blob/master/02.png)




### 2. 纯比例调节下的速度静态误差和静差度
根据波形，记录比例增益分别为Kp1和Kp2时，电机在空载和额定负载转矩条件下的速度静态误差。额定转矩下的波形如上图示，以下分别为kp1和kp2时的空载转矩下的速度波形。

![03](https://github.com/HUSTIChiaHu/photo/blob/master/04.png)

![04](https://github.com/HUSTIChiaHu/photo/blob/master/03.png)

静差即为空载时的转速与额定负载时的转速之差。

***易知kp1时，静差为2，kp2时，静差为4。动态特性的改善牺牲了部分稳态
精度。***

kp1时，静差度为2/409=0.49%

kp2时，静差度为4/197=2.03%



### 3. 采用比例积分PI控制

选择合适的比例增益kp=0.8,积分增益ki=1/6.5,此时电机空载和加额定负载转矩时速度的阶跃响应曲线如下图示。
空载：
![05](https://github.com/HUSTIChiaHu/photo/blob/master/05.png)
额定负载：
![06](https://github.com/HUSTIChiaHu/photo/blob/master/06.png)
波形几乎一致，无静差度，没有超调，过渡过程时间为2.4-1=1.4s。

