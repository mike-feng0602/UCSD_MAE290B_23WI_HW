clear;
clc;
kh = linspace(0, 2*pi, 100);

plot(kh,kh,'--','LineWidth',1)
hold on

modified_kh = sqrt((-1)*(exp(j*kh)-2+exp(-j*kh)));
plot(kh, real(modified_kh),'LineWidth',1.5)


legend('-','3 point central FDA',...
       'FontSize', 15, 'FontWeight', 'bold')

ax = gca;
ax.FontSize = 18;

title('Modified wavenumber analysis for two FDA schemes',...
       'FontSize',20,'FontWeight','bold');
xlabel('kh','FontSize',20,'FontWeight','normal')
ylabel('k prime h','FontSize',20,'FontWeight','normal')

axis padded