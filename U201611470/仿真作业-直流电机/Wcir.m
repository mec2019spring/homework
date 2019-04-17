Un=230;
Ra=0.0144;
K=1.225;
f=0.117;
global Tn;
T=Tn*0.8;
w=(K*Un-Ra*T)/(K*K+f*Ra);
w=w*60/(2*pi);