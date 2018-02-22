function station_point = rcm_yaw(theta,d1,d2,a)
S = sin(theta);
C = cos(theta);
% d1=100;%Determine the y direction distance of stationary point 
%        %coressponding to the base coordinate system
% d2=100;%Determine the z direction distance of stationary point 
%        %coressponding to the base coordinate systeym
%T_0P is the transform matrix from stationary point coordinate system
%to the base coordinate system
T_0P = [ 0 0 -1 0;...
         1 0 0 d1;...
         0 -1 0 d2;...
         0 0 0 1 ];
%T_Ptool is the transform matrix from end-effectorto stationary point
T_Ptool = [ C S 0 -a*C;...
            -S C 0 -a*S;...
            0 0 1 0;...
            0 0 0 1 ];
%Derivated by the RCM mechanism rather than the serial robot arm
T_0tool = T_0P*T_Ptool;
station_point = T_0tool;
