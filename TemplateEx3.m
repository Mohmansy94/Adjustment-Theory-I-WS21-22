%--------------------------------------------------------------------------
%   
%          ADJUSTMENT THEORY I
%   Exercise 3: Propagation of observation errors - part I  
% 
%   Author         : Anastasia Pasioti
%   Version        : October 05, 2018
%   Last changes   : November 17, 2021
%
%--------------------------------------------------------------------------

clc;
clear all;
close all;

%--------------------------------------------------------------------------
%   Task 1
%--------------------------------------------------------------------------
disp('Task 1')

%Given
% a =        %[m]
% b =        %[m]
% sa =       %[m]
% sb =       %[m]

%Area of the rectangle
% A =        %[m^2]

%Standard deviation
% sA =       %[m^2]

%--------------------------------------------------------------------------
%   Task 2
%--------------------------------------------------------------------------
disp('Task 2')

%Given




%Area of the triangle
% A = 

%Standard deviation
% sA = 


%--------------------------------------------------------------------------
%   Task 3
%--------------------------------------------------------------------------
disp('Task 3')

%Given


%Area of a circle 
% A = 

%Standard deviation
% sA = 

%--------------------------------------------------------------------------
%   Task 4
%--------------------------------------------------------------------------
disp('Task 4')

%Given


%Radius of the circle
% r = 

%Standard deviation
% sr = 

%--------------------------------------------------------------------------
%   Task 5
%--------------------------------------------------------------------------
disp('Task 5')

%Given


%Standard deviation
% s100 = 

%--------------------------------------------------------------------------
%   Task 6
%--------------------------------------------------------------------------
disp('Task 6')
%Given
t_0 = 0.0; %unit s
t_end = 2.98; %unit s
std_t = 0.1; %unit s
g = 9.81; %unit m/s^2
%Height of the main building
disp("the height of the main building");
H = vpa(0.5*g*((t_end-t_0)^2),4)
%Standard deviation
S_LL6 = [std_t^2,0; 0,std_t^2];
diff_tend = 0.5*g*2*(t_end-t_0);
diff_t0 = 0.5*g*2*(t_end-t_0)*(-1);
var_H = (diff_tend^2)*(std_t^2) + (diff_t0^2)*(std_t^2);
disp("the standard deviation of the height");
sH = vpa(sqrt(var_H),4)

%--------------------------------------------------------------------------
%   Task 7
%--------------------------------------------------------------------------
disp('Task 7')
%Given
x0 = 0; %unit m
x = 1000; %unit m
t0 = 0; %unit s
v0 = 15; %unit m/s
a = 2; %unit m/s^2
std_v0 = 0.2;
std_a = 0.1;
%Time to travel 1km
%x = x0 + v0*(t-t0) + 0.5*a*(t-t0)^2
syms t;
t = solve(x == x0 + v0*(t-t0) + 0.5*a*(t-t0)^2);
disp("the time to travel 1km");
t = t(t>0)
%Standard deviation
syms v0 a T;
T = solve(x == x0 + v0*(T-t0) + 0.5*a*(T-t0)^2, T);
T = T(2);
%diff_v0 = diff(T,v0)
%diff_a = diff(T,a)
S_LL7 = [std_v0^2,0; 0,std_a^2];
diff_v0 = subs(diff(T,v0),[v0,a],[15,2]);
diff_a = subs(diff(T,a),[v0,a],[15,2]);
var_t = (diff_v0^2)*(std_v0^2) + (diff_a^2)*(std_a^2);
disp("the standard deviation");
st = vpa(sqrt(var_t),4)








