clear;
clc;

kh = linspace(0, 2*pi, 100);
hold on
plot(kh,kh,'--','LineWidth',1)
modified_kh_1 = (1/2j)*(-3 + 4*exp(j*kh)-exp(j*2*kh));
plot(kh, real(modified_kh_1),'LineWidth',1.5)
hold on
modified_kh_2 = (1/2j)*(exp(j*kh)-exp(-j*kh));
plot(kh, real(modified_kh_2),'LineWidth',1.5)



legend('-','FDA in (a)','3 point central FDA',...
       'FontSize', 15, 'FontWeight', 'bold')

ax = gca;
ax.FontSize = 18;

title('Modified wavenumber analysis for two FDA schemes',...
       'FontSize',20,'FontWeight','bold');
xlabel('kh','FontSize',20,'FontWeight','normal')
ylabel('k prime h','FontSize',20,'FontWeight','normal')

axis padded