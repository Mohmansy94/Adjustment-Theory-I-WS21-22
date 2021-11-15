%--------------------------------------------------------------------------
%   
%          ADJUSTMENT THEORY I
%     Exercise 2: Fundamentals of statistics  
% 
%   Author         : Anastasia Pasioti
%   Version        : October 04, 2018
%   Last changes   : November 09, 2021
%
%--------------------------------------------------------------------------

clc;
clear all;
close all;

%--------------------------------------------------------------------------
%   Task 3
%--------------------------------------------------------------------------
%Load the data
data = load('distances.txt');

%Number of measurements
n = length(data);

%Absolute frequency function/polygon
figure(1)
[x y] = absFrequency(data); 
bar(x,y)
hold on
plot(x,y,'r') %r-red
grid %the grid line
title('Absolute frequency function/Polygon')
xlabel('Distance in [m]')
ylabel('Absolute number of measurements')
hold off

%Relative frequency function/polygon
figure (2)
[x y] = relFrequency(data);
bar(x,y)
hold on
plot(x,y,'b')
grid
title('Relative frequency function/Polygon')
xlabel('Distance in [m]')
ylabel('Relative frequency of measurement')
hold off

%Cumulative frequency function/polygon
figure (3)
[x_cum y_cum] = cumFrequency(data);
bar(x_cum,y_cum)
hold on
plot(x_cum,y_cum,'g')
grid
title('Cumulative frequency function/polygon')
xlabel('Distance in [m]')
ylabel('Cumulative frequency of measurement(%)')
hold off

% Calculate the mean value, variance and standard deviation 
% of a single observation as well as for the arithmetic mean
%Mean value

e = ones(1,n);
mv = e*data/n;

%Variance of a single observation
residuals = data - mv;
var_sigle = residuals'*residuals/(n-1)
%var(data)

%Standard deviation of a single observation
std_single = sqrt(var_sigle)

%Variance of an arithmetic mean
var_arith = var_sigle/n

%Standard deviation of an arithmetic mean
std_arith = sqrt(var_arith)


%Question









