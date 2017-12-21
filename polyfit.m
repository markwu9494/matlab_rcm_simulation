m=4;%ployfit 
t=(10/Size(1))*[1:Size(1)]';%limit the time to 10s
%plot all the trajectory of the angle position of the joints
plot(t,qq(:,1),'-*');
hold on
plot(t,qq(:,2),'-*');
hold on
plot(t,qq(:,3),'-*');
hold on
plot(t,qq(:,4),'-*');
hold on
plot(t,qq(:,5),'-*');
hold on
plot(t,qq(:,6),'-*');
hold on
[p2 s2]=polyfit(t,qq(:,2),m);
[p4 s4]=polyfit(t,qq(:,4),m);
[p6 s6]=polyfit(t,qq(:,6),m);
fprintf('q2=%d*x_4+%d*x_3+%d*x_2+%d*x_1+%d\n',p2(1),p2(2),p2(3),p2(4),p2(5));
fprintf('q4=%d*x_4+%d*x_3+%d*x_2+%d*x_1+%d\n',p4(1),p4(2),p4(3),p4(4),p4(5));
fprintf('q6=%d*x_4+%d*x_3+%d*x_2+%d*x_1+%d',p6(1),p6(2),p6(3),p6(4),p6(5));
