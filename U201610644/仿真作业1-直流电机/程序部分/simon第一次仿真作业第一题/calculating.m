Pn = 74.6e+03;
Vn = 230;
k = 1.225;
R = 0.0144;
Nn = 1750;
zn = 0.117;
Wn = Nn*2*pi/60;
Itrue = (Vn-k*Wn)/R;
Tn = k*Itrue - zn*Wn;

Tmax = 1.2*Tn;
Tmin = 0.8*Tn;

nmin = (Vn/k-R/k/k*Tmax)*60/(2*pi)/(1+R*zn/k);
nmax = (Vn/k-R/k/k*Tmin)*60/(2*pi)/(1+R*zn/k);
