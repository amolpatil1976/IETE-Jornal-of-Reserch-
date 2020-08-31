function CONSENS 
t=0:0.1:10
x0=[1 ;2 ;3 ;4; 5; 6]
%options = odeset('OutputFcn',@odeplot)
[t,x]=ode45(@inputs,t,x0);
figure()
plot(t,x,'Linewidth',2)
xlabel('t (seconds)')
ylabel({'state Values','(Node No. = Initial Value)'})
title('State values Vs t')
grid on
end
function xdot=inputs(t,x,L)
  A=[0 1 0 1 0 0;
     1 0 1 1 0 1;
     1 1 0 0 1 0;
     0 1 0 0 0 1;
     0 0 1 0 0 1;
     0 1 0 1 0 1 ];
D=diag(sum(A,2));
L=D-A;
xdot=-L*x;
end