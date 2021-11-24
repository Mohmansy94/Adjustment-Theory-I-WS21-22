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
disp("the standard deviation of the height of the main building");
sH = vpa(sqrt(var_H),4)

%--------------------------------------------------------------------------
%   Task 7
%--------------------------------------------------------------------------
disp('Task 7')

%Given


%Time to travel 1km
% t = 

%Standard deviation
% st = 








