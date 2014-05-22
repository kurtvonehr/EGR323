%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Kurt VonEhr
% 5/15/14
% EGR323 - Ward
% Lab 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Close all existing windows
close all

%**************************************************************

% 1.6 Part A

%**************************************************************

figure();

%Create symbolic continuous-time sinusoid
x = sym('sin(2*pi*t/T)');

%Set fundamental period of x
%function x, variable T = 5
x5 = subs(x,'T',5);

%plot the continuous time time function
ezplot(x5);
title({'1.6 A';['x(t) =', char(x5)]});

%Export JPG to working directory
hgexport(gcf, 'EGR323/Lab02/fig1.jpg', hgexport('factorystyle'), 'Format', 'jpeg');

clearvars

%**************************************************************

% 1.6 Part B

%**************************************************************

figure();

%Create symbolic continuous-time sinusoid
x = sym('cos(2*pi*t/T)*sin(2*pi*t/T)');

%Set fundamental period of x
%function x, variable T = 4
subplot(3,1,1);
x4 = subs(x,'T',4);

%plot the continuous time time function
ezplot(x4);
title({'1.6 B';' ';'T = 4';['x(t) =', char(x4)]});

%Set fundamental period of x
%function x, variable T = 8
subplot(3,1,2);
x8 = subs(x,'T',8);

%plot the continuous time time function
ezplot(x8);
title({'T = 8';['x(t) =', char(x8)]});

%Set fundamental period of x
%function x, variable T = 16
subplot(3,1,3);
x16 = subs(x,'T',16);

%plot the continuous time time function
ezplot(x16);
title({'T = 16';['x(t) =', char(x16)]});

%Export JPG to working directory
hgexport(gcf, 'EGR323/Lab02/fig2.jpg', hgexport('factorystyle'), 'Format', 'jpeg');

clearvars

%**************************************************************

% 1.6 Part C

%**************************************************************

figure();

%create symbolic symbol for a exponential signal
x = sym('exp(-A*t)*cos(2*pi*t)');
%create symbolic symbol for a exponential signal
x2 = sym('.1');

%alpha = 1/2
subplot(3,1,1);
a1 = subs(x,'A',1/2);

%plot the continuous time time function
ezplot(a1, [0,10]);
hold on
ezplot(x2, [0,10]);

intersect = solve(a1 == .1);
intersect

%alpha = 1/4
subplot(3,1,2);
a2 = subs(x,'A',1/4);

%plot the continuous time time function
ezplot(a2, [0,10]);
hold on
ezplot(x2, [0,10]);

intersect = solve(a2 == .1);
intersect

%alpha = 1/5
subplot(3,1,3);
a3 = subs(x,'A',1/8);

%plot the continuous time time function
ezplot(a3, [0,20]);
hold on
ezplot(x2, [0,25]);

intersect = solve(a3 == .1);
intersect

%Export JPG to working directory
hgexport(gcf, 'EGR323/Lab02/fig3.jpg', hgexport('factorystyle'), 'Format', 'jpeg');

clearvars

%**************************************************************

%Run script for next problem
lab02_1_7










