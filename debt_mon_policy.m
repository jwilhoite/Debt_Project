cd '/Users/johnwilhoite/Documents/MATLAB/Debt_Project'
clear all 

%%%%%%%%  CALIBRATION  %%%%%%%%
r=1/0.96;
beta=0.96;
psi=7.08;
pi_star=1.084;

p=0.5;
y_1=5;
y_2h=10;
y_2l=0;

e1=1;

%%%%%%%%  SOLUTION  %%%%%%%%
noughtspace = 0.1:0.1:10;

solutions=zeros(length(noughtspace),7);
flags = zeros(length(noughtspace),1);
initial_value = zeros(length(noughtspace),1);

for n=1:length(noughtspace)
    fun = @(x) model_two(x, r, beta, psi, pi_star, p, y_1, y_2h, y_2l, e1);
    x0=zeros(1,7)+n;
    [x,~,flag] = fsolve(fun,x0);
    flags(n)=flag;
    initial_value(n)=x0(1);
    solutions(n,:)=x;
end 

figure
plot(initial_value,solutions(:,1))
xlabel('Initial Value')
ylabel('Consumption');







