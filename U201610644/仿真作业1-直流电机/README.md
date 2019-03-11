# 仿真作业1-直流电机 
      
     机卓1601 姚尧 U201610644
	 
---

### 一、求额定转矩及转速验证
1. 求出额定转矩

由于电机在额定电压下工作，所以以额定电压计算来额定转矩Tn：

对于直流电机的模型，我们有：   
	
![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A1-%E7%9B%B4%E6%B5%81%E7%94%B5%E6%9C%BA/figure/formula_2.png)
	
考虑到电机的存在转矩阻尼，故转矩公式校正为：
![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A1-%E7%9B%B4%E6%B5%81%E7%94%B5%E6%9C%BA/figure/formula_1.png)

以下为matlab计算代码：


```
	Pn = 74.6e+03;
	Vn = 230;
	k = 1.225;
	R = 0.0144;
	Nn = 1750;
	zn = 0.117;
	Wn = Nn*2*pi/60;
	Itrue = (Vn-k*Wn)/R;
	Tn = k*Itrue - zn*Wn;
```

计算出考虑阻尼的额定转矩 **Tn = 447.0382（NM）**  

仿真校验结果如下：   

<center>    

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A1-%E7%9B%B4%E6%B5%81%E7%94%B5%E6%9C%BA/figure/figure1_n.png)
</center>


---
2. 将0.8T与1.2T带入计算相应转速：  

转速的计算公式为：

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A1-%E7%9B%B4%E6%B5%81%E7%94%B5%E6%9C%BA/figure/formula_3.png)

考虑到电机的存在转矩阻尼的计算式

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A1-%E7%9B%B4%E6%B5%81%E7%94%B5%E6%9C%BA/figure/formula_4.png)

转速的计算式校正为：
![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A1-%E7%9B%B4%E6%B5%81%E7%94%B5%E6%9C%BA/figure/formula_5.png)

以下为matlab计算代码：
```
	Tmax = 1.2*Tn;
	Tmin = 0.8*Tn;

	nmin = (Vn/k-R/k/k*Tmax)*60/(2*pi)/(1+R*zn/k);
	nmax = (Vn/k-R/k/k*Tmin)*60/(2*pi)/(1+R*zn/k);
```

计算出转速范围为 **[1741.4,1757.7] (rpm)**

通过simulink仿真验证结果：
<center> 

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A1-%E7%9B%B4%E6%B5%81%E7%94%B5%E6%9C%BA/figure/figure1_1.png)
</center> 
最高转速验证：
<center> 

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A1-%E7%9B%B4%E6%B5%81%E7%94%B5%E6%9C%BA/figure/figure1_max.png)
</center> 


最低转速验证：
<center> 


![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A1-%E7%9B%B4%E6%B5%81%E7%94%B5%E6%9C%BA/figure/figure1_min.png)
</center> 


**Conclusion** **:** 载荷在额定载荷20%范围内波动时，电机转速的仿真结果和计算结果一致。

### 二、电机启动和制动设计
结合课本上的内容，采用降压启动+能耗制动的启制动方式。  

1.启动阶段电源电压线形增加到额定电压Va。   
2.能耗制动制动电阻Rad = 0.15 欧   

simulink 仿真如下图
<center> 

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A1-%E7%9B%B4%E6%B5%81%E7%94%B5%E6%9C%BA/figure/figure2_1.png)
</center> 
其中，信号源的信号如图：

制动开关控制信号：
<center> 

![制动开关控制信号](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A1-%E7%9B%B4%E6%B5%81%E7%94%B5%E6%9C%BA/figure/figure2_signal12.png)
</center> 


启动电源信号：
<center> 

![启动电源信号](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A1-%E7%9B%B4%E6%B5%81%E7%94%B5%E6%9C%BA/figure/figure2_signal3.png)
</center> 

验证启动制动电路的设计效果：
<center> 

![](https://raw.githubusercontent.com/Simon142857/homework/master/U201610644/%E4%BB%BF%E7%9C%9F%E4%BD%9C%E4%B8%9A1-%E7%9B%B4%E6%B5%81%E7%94%B5%E6%9C%BA/figure/figure2_result.png)
</center> 

**Conclusion** **:** 降压启动+能耗制动的启制动方式能够满足题目的要求，启动电流较小，两秒内达到额定工况，制动迅速有效。




