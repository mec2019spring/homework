# 仿真作业2
### -	1）采用纯比例P控制，改变比例增益，使得速度阶跃响应超调量为5%和20%，并记录对应比例增益值Kp1和Kp2。

纯P控制时系统图如下图所示：

 ![纯P控制系统图.jpg](https://github.com/HUSTWen/homework/blob/master/U201610798/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2-%E7%9B%B4%E6%B5%81%E8%B0%83%E9%80%9F/%E7%BA%AFP%E6%8E%A7%E5%88%B6%E7%B3%BB%E7%BB%9F%E5%9B%BE.jpg?raw=true)

无法实现超调量5%

超调20%时
Kp2 = 0.7838

### -	2）根据波形，记录比例增益分别为Kp1和Kp2时，电机在空载和额定负载转矩条件下的速度静态误差。

超调量20%时输出转速曲线：

![超调量20%输出转速图.jpg](https://github.com/HUSTWen/homework/blob/master/U201610798/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2-%E7%9B%B4%E6%B5%81%E8%B0%83%E9%80%9F/%E8%B6%85%E8%B0%83%E9%87%8F20%25%E8%BE%93%E5%87%BA%E8%BD%AC%E9%80%9F%E5%9B%BE.jpg?raw=true)

理想空转转速 n0 = 440rpm

额定负载转速 n = 418rpm

速度静态误差 S = (n0 - n) / n0 = 0.05

### -	3）采用比例积分PI控制，选择合适的比例增益和积分增益，得到较为理想的阶跃响应曲线，记录比例增益Kp和积分增益Ki，并根据阶跃响应曲线记录超调量和过渡过程时间。观察电机从空载到加额定负载转矩时速度的变化过程。

PI控制时系统图如下图所示：

![PI控制系统图.jpg](https://github.com/HUSTWen/homework/blob/master/U201610798/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2-%E7%9B%B4%E6%B5%81%E8%B0%83%E9%80%9F/PI%E6%8E%A7%E5%88%B6%E7%B3%BB%E7%BB%9F%E5%9B%BE.jpg?raw=true)

其中 Kp = 0.7 ， Ki = 5.8

对应输出转速曲线如下图所示：

![PI控制阶跃响应曲线.jpg](https://github.com/HUSTWen/homework/blob/master/U201610798/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A2-%E7%9B%B4%E6%B5%81%E8%B0%83%E9%80%9F/PI%E6%8E%A7%E5%88%B6%E9%98%B6%E8%B7%83%E5%93%8D%E5%BA%94%E6%9B%B2%E7%BA%BF.jpg?raw=true)

超调量  Mp = 0

过渡过程时间   t = 0.742s （输出转速进入0.02n0稳定值区间时）

由图像可知加额定负载转矩时转速先减小，经0.237s进入0.02n0稳定值区间，最大转速波动31.4rpm
