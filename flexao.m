close all; clear all; clc
%#########################################################################
%                                 Re 10^5
%#########################################################################
%/////////////////////////////////////////////////////////////////////////
% Vr vs Ymáx 
%/////////////////////////////////////////////////////////////////////////


VRH1= [ 7.02  10 15 20];
VRH4=[];
vrh4=[2 5 8 10 12 15];
VR= [2 5.0 8.0 10.0 12 15 ];
VRr= [2 5.0 8.0 10.0 12 15 18 20 ];
% REFERENCIA WHASHIEH
H1 = [-0.82 -14.51 7.87 5 4.67 4.2];
H4 = [-2.66  -16 9.88 4.14 3.44 0.94];
% MEUS RESULTADOS 
h1= [-0.1236113 -11.0587333 -2.5721951 -26.9428654 12.7907264 9.4 5.8 6.5];
h4=[-3.0291515 -6.4507519 -3.5340664 -8.1015495 -0.8389355 7.74 5.6 2.38];
% Hmatsumoto
hh4=[-0.87 -5.16 0.21 34 17 6.67];
hh1=[-0.86 -5.47 -21 -25 18.72 14.55 ];

% Gráfico
figure(1)

plot(VRr, h1,'r-.o')
hold on
plot(VR, hh1,'b:d')
hold on
plot(VR, H1,'k--s')
%grid on
xlabel('U_{red}'), ylabel('H_{1}^{*}')
box off
leg = legend('Fronczak','Matsumoto (1996)', 'Sarkar et al. (2014)');
set(leg,'Location','best')
legend('boxon')
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',14)
axis ([0,20,-60,60])
hold off

% Gráfico
figure(2)
%plot(Vr, H4,'k--s')
%hold on
plot(VRr, h4,'r-.o')
hold on
plot(VR, hh4,'b:d')
hold on
plot(VR, H4,'k--s')
%grid on
xlabel('U_{red}'), ylabel('H_{4}^{*}')
box off
leg = legend(' Fronczak','Matsumoto (1996)', 'Sarkar et al. (2014)');
set(leg,'Location','best')
legend('boxon')
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',14)
axis ([0,20,-60,60])
hold off

%VRA1=[0.797872 1.75532 2.63298 3.51064 4.46809 5.26596 7.89894 10.5319 13.1649 15.877 18.5106 21.1436 26.4096];
%VRA4=[0.840705 1.76648 2.66219 3.51333 4.39166 5.30677 7.93311 10.5686 13.2036 15.9221 18.4763 21.1127 26.4684];
%vra1=[7.57979 11.25 15 18.8298 22.5798];
%vra4=[7.52102 11.2271 14.9608 18.7499 22.5878];
% REFERENCIA NIETO
vr=[2 5 8 10 12 15 18 20];
%A1 = [1.56 1.78  2.18 2.5];
%A4 = [-0.54 -0.87 -1.29  -1.74];
%VR= [2 5.0 8.0 10.0 12 ];
% MEUS RESULTADOS 
a1= [-0.6340988 0.4707191 0.4323017 2.1868387 -0.2796452  1.5 1.42 1.9];
a4=[-0.1426933 -0.8306187 -0.1242867 -2.0475227 -1.9149614 -1.82 -1.85 -1.89];
% MATSUMOTO
aa1=[0 1.1 1.457 1.7519 1.8827 2.1934 2.2099 2.23515];
aa4=[0 -0.096 -0.5518 -0.80101 -1.082 -1.50031 -1.82 -2.14305 ];
% Gráfico
figure(3)
%plot(Vr, A1,'k--s')
%hold on
plot(vr, a1,'r-.o')
hold on
plot(vr, aa1,'k:d')
%hold on
%plot(VRH1, A1,'k--s')
%grid on
xlabel('U_{red}'), ylabel('A_{1}^{*}')
box off
leg = legend('Fronczak','Matsumoto (1996)');
set(leg,'Location','best')
legend('boxon')
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',14)
axis ([0,20,-20,10])

figure(4)
%plot(Vr, A4,'k--s')
%hold on
plot(vr, a4,'r-.o')
hold on
plot(vr, aa4,'k:d')
%hold on
%plot(VRH1, A4,'k--s')
%grid on
xlabel('U_{red}'), ylabel('A_{4}^{*}')
box off
leg = legend(' Fronczak','Matsumoto (1996)');
set(leg,'Location','best')
legend('boxon')
set(gca, 'FontName', 'Times New Roman')
set(gca,'FontSize',14)

axis ([0,20,-20,10])