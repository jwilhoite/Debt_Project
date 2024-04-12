cd '/Users/johnwilhoite/Documents/MATLAB/Debt_Project'
clear all 

%%%%%%%%  CALIBRATION  %%%%%%%%
r=1.04;
beta=0.96;
psi=5;
pi_star=1.01;

p=0.5;
y_1=0;
y_2h=10;
y_2l=0;

e1=1;

%%%%%%%%  SOLUTION  %%%%%%%%%
solutions=zeros(1,7);

fun = @(x) model_two(x, r, beta, psi, pi_star, p, y_1, y_2h, y_2l, e1);
x0=ones(1,7);
[x,~,flag] = fsolve(fun,x0);

solutions=x;








