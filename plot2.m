clear
close all
x_1(1)=0;
x_2(1)=5;
gap=1;
delta_t=0.05;
end_time=10;
time=0:delta_t:end_time;
length_time=length(time);
G=1;
for i=1:length_time-1
    x_1(i+1)=x_1(i)
    x_2(i+1)=x_2(i)+G*(x_1(i)-x_2(i))*delta_t;
    i=i+1
end
%figure('Units', 'inches',...
        %'Position', [0 0 7.2 5],....
        %'PaperPositionMode', 'auto');
plot(time,x_1,'r',time,x_2,'b')
legend('robot 1', 'robot 2');
%title('Trajectory of two robots vs Time')
xlabel ('Time in seconds');
ylabel ({'Robot postion','Robot1 x1(0) = 0 and Robot2 x2(0)= 5'});
%ylabel("x");
%xlabel("time");
%axis([0 end_time -1 6])
