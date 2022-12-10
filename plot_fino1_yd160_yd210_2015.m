% % In this code, we plot wind mean measurements from 
% % sonic anemometer mounted at 15m above the mean sea level
% % at the geographical location of FINO1 offshore met-mast.
% % Time series cover yeardays between 160 and 210, 2015.
% % Datasets are as follows:
% % time15: mean time at each 30-min burst of 15m sonic data.
% % umean15: mean wind speed at 15m height from average of each sonic 30-min segment at 15m sonic.
% % UU10: wind at 10m heigh from umean15 using logarithmic wind profile.
% % ti_ref: reference time - first of January 2015.
% % wdir: wind direction at 15m measured from high freq. sonic data.
% % wa: wave age data estimated from sonic data and wave phase speed (see OBLEX-F1 data).
% % L15: Moninnon-Obukhov length scale measured by 25Hz sonic data at 15m height.
% % 
% % Mostafa Bakhoday Paskyabi, 10 Dec. 2022
% % Mostafa.Bakhoday-Paskyabi@uib.no

close all;clear all;clc
load FINO1_YD160_210_WIND_TURBULENCE
depth=30;   % water depth at FINO1
ts0=165;te0=166.3; 
ts0=191;te0=194; 
ts1=175;ts2=176.4;
ts=160;%time15(1)-ti_ref;
te=210;%time15(end)-ti_ref;
ti_ref=datenum(2015,1,1);
ts=datenum(2015,6,1)-ti_ref;
te=datenum(2015,7,30)-ti_ref;


figure
set(gcf,'Position',[100 100 900 1000])
set(groot, 'defaultAxesTickLabelInterpreter','latex');
set(groot, 'defaulttextinterpreter','latex');
set(groot, 'defaultLegendInterpreter','latex');
set(groot, 'defaultAxesTitle','latex');
set(gcf, 'Color', 'w')
ax=[];
ax(1)=subplot(311)
h4=plot(time15-ti_ref,UU10,'k','linew',2);
box on;grid off;ylabel('Wind speed [m s$^{-1}$]', 'interpreter','latex')
set(gca,'FontSize',20)
ylim([0,16])
xlim([ts,te])
ax(2)=subplot(312)
h4=plot(time15-ti_ref,wdir,'b.','markersize',12);
box on;grid off;ylabel('Wind direction [$^{o}$]', 'interpreter','latex')
xlim([ts,te])
set(gca,'FontSize',20)

ax(3)=subplot(313)
h4=plot(time15-ti_ref,15./L15,'k.','markersize',12);
box on;grid off;ylabel(' $z/L$', 'interpreter','latex')
xlim([ts,te])
ylim([-5,5])
xlabel('Yearday 2015')
set(gca,'FontSize',20)

set(ax,'xlim',[ts,te])
%set(ax([1 2]),'xticklabel','')



