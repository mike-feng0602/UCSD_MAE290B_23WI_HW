clear;
clc;

Omega = 0.2;
Tau = 400;
Lamda = j*Omega-1/Tau;
h = 1;
k = Lamda*h;

tspan = linspace(0,500,501);

y = [1];          
yy = 1;
for i = 1:500
    yy = yy*(1+k+0.5*k^2+(1/6)*k^3);
    y = [y, yy];
end

plot(tspan,real(y),LineWidth=1)

hold on 
y_exact = exp(Lamda*tspan)
plot(tspan,real(y_exact),'--',LineWidth=2)

legend('3rd R-K','Exact',...
       'FontSize', 13, 'FontWeight', 'bold')

title('Solution for Eq(1)','FontSize',20);
xlabel('Time','FontSize',18)
ylabel('y','FontSize',18)

ax = gca;
ax.FontSize = 18;