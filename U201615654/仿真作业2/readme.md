...

连线图如下：

![image](https://github.com/19xp98/homework/blob/master/U201615654/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2/lianxiantu.png)

单闭环调速系统算法仿真

1）采用纯比例P控制，改变比例增益，使得速度阶跃响应超调量为5%和20%，并记录对应比例增益值Kp1和Kp2。

超调量为5%：

kp1为：

![image](https://github.com/19xp98/homework/blob/master/U201615654/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2/1.kp1.png)

波形图为：

![image](https://github.com/19xp98/homework/blob/master/U201615654/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2/1.kp1-1.png)

超调量20%：

kp2为：

![image](https://github.com/19xp98/homework/blob/master/U201615654/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2/1.kp2.png)

波形图为：

![image](https://github.com/19xp98/homework/blob/master/U201615654/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2/1.kp2-1.png)

2）根据波形，记录比例增益分别为Kp1和Kp2时，电机在空载和额定负载转矩条件下的速度静态误差。

kp1条件下有负载：

![image](https://github.com/19xp98/homework/blob/master/U201615654/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2/1.kp1-1.png)

无负载：

![image](https://github.com/19xp98/homework/blob/master/U201615654/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2/2.kp1-empty.png)

kp2条件下有负载：

![image](https://github.com/19xp98/homework/blob/master/U201615654/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2/1.kp2-1.png)

无负载：

![image](https://github.com/19xp98/homework/blob/master/U201615654/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2/2.kp2-empty.png)

3）采用比例积分PI控制，选择合适的比例增益和积分增益，得到较为理想的阶跃响应曲线，记录比例增益Kp和积分增益Ki，并根据阶跃响应曲线记录超调量和过渡过程时间。观察电机从空载到加额定负载转矩时速度的变化过程。

kp与ki参数：

![image](https://github.com/19xp98/homework/blob/master/U201615654/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2/3.kp&ki.png)

波形图：

![image](https://github.com/19xp98/homework/blob/master/U201615654/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2/3.kp&ki-plot.png)
