function FINAL
  A=[0 0 0 0 0 0;
   1 0 0 0 0 0;  
   1 0 0 0 0 0;   
   0 1 0 0 0 0;   
   0 0 1 0 0 0;   
   0 0 1 0 0 0;];
t=0:0.1:10;
x0 = rand(1,size(A,1))*100;
[t,x]=ode45(@news,t,x0);
figure()
plot(t,x,'Linewidth',2)
xlabel('t (seconds)')
ylabel('state Values')
title('State values Vs t')
grid on
end
function xdot = news(t,x,L)
A=[0 0 0 0 0 0;
   1 0 0 0 0 0;  
   1 0 0 0 0 0;   
   0 1 0 0 0 0;   
   0 0 1 0 0 0;   
   0 0 1 0 0 0;];
D=diag(sum(A,2));
L=D-A;  
xdot = -L*x;
end

