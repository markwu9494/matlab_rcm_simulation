function wubot(a,d1,a3,d5)
L(1)=Link('revolute','d',d1,'a',0,'alpha',0,'offset',pi/2,'modified');
L(2)=Link('revolute','d',0,'a',0,'alpha',-pi/2,'offset',-pi/2,'modified');
L(3)=Link('revolute','d',0,'a',0,'alpha',pi/2,'offset',0,'modified');
L(4)=Link('revolute','d',0,'a',a3,'alpha',-pi/2,'offset',pi/2,'modified');
L(5)=Link('revolute','d',d5,'a',0,'alpha',pi/2,'offset',0,'modified');
L(6)=Link('revolute','d',0,'a',0,'alpha',-pi/2,'offset',0,'modified');
wubot1=SerialLink(L,'name','wubot');
wubot1.tool=transl(a,0,0);%a is the tool distance

