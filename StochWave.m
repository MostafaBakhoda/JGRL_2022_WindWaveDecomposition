function [elevation ] = StochWave(Hs,Tp,time)
% In this code, we use JONSWAP wave spectrum to generate surface elevation time serie
% Hs: significant wave height
% Tp: wave peak period
% time: time to be used for generation of surface elevation.
% dt=time(2)-time(1)
% Tend: time interval [0,Tend].
% dt: time step.
