function [t, vel ] = StochWind(F,Sw,U10,freq_highcut,Tend,dt)
% In this code, we use Kaimal wind spectrum to generate wind turbulence time serie
% for one component of wind. 
% F: Frequency
% freq_highcut: high cut-off frequency
% U10: wind speed at 10m
% Tend: time interval [0,Tend].
% dt: time step.
