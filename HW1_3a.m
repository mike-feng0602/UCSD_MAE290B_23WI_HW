clear;
x = -3:0.1:1;
y = -4:0.1:4;
[x,y] = meshgrid(x,y);
z = x + j*y;
R = 1 + z + 0.5*z.^2 + (1/6)*z.^3;
contour(x,y,abs(R),[1,1],'k',LineWidth=2)
title('Stability diagram for 3rd order R–K','FontSize',20);
xlabel('Real(h*lamda)','FontSize',18)
ylabel('Imag(h*lamda)','FontSize',18)
ax = gca;
ax.FontSize = 15;




