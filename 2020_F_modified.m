clear;clc

% global variable statement
global r beta N gamma r2beta2 beta3 r3beta3
N = 444259; % population of EDPs
r = 41.57; % 
beta = 0.872849;
gamma = 0.5;
r2beta2 = 9;
r3beta3 = 0.4;

options = odeset('MaxStep',0.01);
[T,Y] = ode45(@func_SEIR, [0,20],[1 444259 0 0 0.5], options);  

figure(15)
plot(T,Y(:,1),'r','LineWidth',2);
hold on;
plot(T,Y(:,2),'b','LineWidth',2);
plot(T,r3beta3*Y(:,3),'k-.','LineWidth',2);
plot(T,(1-r3beta3)*Y(:,3),'k-','LineWidth',2);
plot(T,Y(:,4),'b-.','LineWidth',2);
legend('I','S','R','D','E')
xlabel('t/ yr');
ylabel('I/ people');
hold off



