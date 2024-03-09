% Date created: Jan 30, 2024
% R. Manica

% This code runs the SIR Model

clear all;

S(1) = 10000;
I(1) = 10;
R(1) = 0;
time(1) = 0;

beta = .00003;
alpha= .05;
delta = 0.001;

% Disctrete-time SIR Model
for i = 1:100
    S(i+1) = S(i)-beta*I(i)*S(i) + delta*R(i);
    I(i+1) = I(i)+beta*I(i)*S(i) - alpha*I(i);
    R(i+1) = R(i)+alpha*I(i)- delta*R(i);
    time(i+1) = i ;
end

figure(1)
plot(time,S,'b',time,I,'m',time,R,'r')
title('Plot of # of (S, I ,R) People Against Time',FontName='serif')
xlabel('Time (days)',FontName='serif')
ylabel('S, I, R (# of people)',FontName='serif')
grid on;
xticks(0:10:100)
yticks(0:1000:10000)