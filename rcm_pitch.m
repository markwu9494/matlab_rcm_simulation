function station_point=rcm_pitch(theta)
S=sin(theta);
C=cos(theta);
d1=300;%Determine the y direction distance of stationary point 
       %coressponding to the base coordinate system
d2=300;%Determine the z direction distance of stationary point 
       %coressponding to the base coordinate systeym
%T_0P is the transform matrix from stationary point coordinate system
%to the base coordinate system
T_0P=[0 0 -1 0;...
      1 0 0 d1;...
      0 -1 0 d2;...
      0 0 0 1];
%T_Ptool is the transform matrix from end-effectorto stationary point
T_Ptool=[C 0 S 0;...
      0 1 0 0;...
      -S 0 C 0;...
      0 0 0 1];
%Derivated by the RCM mechanism rather than the serial robot arm
T_0tool=T_0P*T_Ptool;
station_point=T_0tool;