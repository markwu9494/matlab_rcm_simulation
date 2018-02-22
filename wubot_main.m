%Simulation of 6 DOF serial robot arm
%for surgery application
%especially for hystrectomy operation
%Edited by J.H.WU at CUHK
%Date:2017/12/18
clc;
clear all;
a = 242;%tool distance
d1 = 202;%length 1
a3 = 175;%length 2
d5 = 217;%length 3
L(1) = Link('revolute','d',d1,'a',0,'alpha',0,'offset',pi/2,'modified');
L(2) = Link('revolute','d',0,'a',0,'alpha',-pi/2,'offset',-pi/2,'modified');
L(3) = Link('revolute','d',0,'a',0,'alpha',pi/2,'offset',0,'modified');
L(4) = Link('revolute','d',0,'a',a3,'alpha',-pi/2,'offset',pi/2+pi/2,'modified');
L(5) = Link('revolute','d',d5,'a',0,'alpha',pi/2,'offset',0,'modified');
L(6) = Link('revolute','d',0,'a',0,'alpha',-pi/2,'offset',0,'modified');
wubot1 = SerialLink(L,'name','wubot');
wubot1.tool = transl(a,0,0);
A = [-30*pi/180:0.1*pi/180:30*pi/180]';
Size = size(A);
qq = zeros(Size(1),6);
plot3(0,400,400,'*');
hold on
for i = 1:Size(1)
    T_tool = rcm_yaw(A(i,1),400,400,0);
    qi = wubot1.ikine(T_tool);
    wubot1.plot(qi);
    qq(i,:) = qi;
    xlim([-500 800]);
    ylim([-500 800]);
    zlim([-20 800]);
end

