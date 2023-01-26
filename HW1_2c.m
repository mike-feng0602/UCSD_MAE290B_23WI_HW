clear;
clc;
%% Define parameters

Omega = 0.2;
Tau = 400;
Lamda = j*Omega-1/Tau;

tspan_Mat = [0, 50; 450, 500];
theta_Mat = [1/4, 3/4];
h_Mat = [0.01, 0.1, 1];

%% Plot

k = 0;
for tspanLoc = 1:2
    for thetaValue = 1:2

        k = k+1;

        subplot(2,2,k);

        t1 = tspan_Mat(tspanLoc,1);
        t2 = tspan_Mat(tspanLoc,2);
        theta = theta_Mat(thetaValue);

        t_exact = linspace(t1, t2, 501);
        y_exact = exp(Lamda*t_exact);

        for hValue = 1:3

            h = h_Mat(hValue);
            t = linspace(t1,t2,1+50/h);
            Sigma = (1+(1-theta)*Lamda*h)/(1-theta*h*Lamda);

            y1 = [1];          
            yy = 1;
            for i = 1:50/h
                yy = yy*Sigma;
                y1 = [y1, yy];
            end
            plot(t,real(y1),'LineWidth',1.1)
            hold on

        end
        plot(t_exact,real(y_exact),'--','LineWidth',1.5)
        legend('h = 0.01','h = 0.1','h = 1','Exact Solution',...
               'FontSize', 13, 'FontWeight', 'bold')

        ax = gca;
        ax.FontSize = 18;

        title(['Time span: ',num2str(tspan_Mat(tspanLoc,1)),...
               '-',num2str(tspan_Mat(tspanLoc,2)),' s, theta = ',...
               num2str(theta_Mat(thetaValue))],...
               'FontSize',22,'FontWeight','bold');
        xlabel('Time','FontSize',20,'FontWeight','normal')
        ylabel('y','FontSize',20,'FontWeight','normal')
        
        axis padded
        
    end
end







