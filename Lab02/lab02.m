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

%Export JPG to working directory
hgexport(gcf, 'Lab02/fig1.jpg', hgexport('factorystyle'), 'Format', 'jpeg');

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

%Set fundamental period of x
%function x, variable T = 8
subplot(3,1,2);
x8 = subs(x,'T',8);

%plot the continuous time time function
ezplot(x8);

%Set fundamental period of x
%function x, variable T = 16
subplot(3,1,3);
x16 = subs(x,'T',16);

%plot the continuous time time function
ezplot(x16);

%Export JPG to working directory
hgexport(gcf, 'Lab02/fig2.jpg', hgexport('factorystyle'), 'Format', 'jpeg');

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
hgexport(gcf, 'Lab02/fig3.jpg', hgexport('factorystyle'), 'Format', 'jpeg');

clearvars

%**************************************************************
%**************************************************************

% 1.7 Part A

%**************************************************************


figure();

%Create symbolic ramp function using heaviside function
f = sym('t*(Heaviside(t)-Heaviside(t-2))');

%plot the continuous time time function
ezplot(f);

%Export JPG to working directory
hgexport(gcf, 'Lab02/fig4.jpg', hgexport('factorystyle'), 'Format', 'jpeg');

clearvars

%**************************************************************

% 1.7 Part C

%**************************************************************

figure();

%Create symbolic ramp function using heaviside function
f = sym('t*(Heaviside(t)-Heaviside(t-2))');

%Set fundamental period of x
%function x, variable T = 4
subplot(5,1,1);
g1 = subs(f,'t','-t');

%plot the continuous time time function
ezplot(g1);

%Set fundamental period of x
%function x, variable T = 8
subplot(5,1,2);
g2 = subs(f,'t','t+1');

%plot the continuous time time function
ezplot(g2);

%Set fundamental period of x
%function x, variable T = 16
subplot(5,1,3);
g3 = subs(f,'t','t-3');

%plot the continuous time time function
ezplot(g3);

%Set fundamental period of x
%function x, variable T = 8
subplot(5,1,4);
g4 = subs(f,'t','-t+1');

%plot the continuous time time function
ezplot(g4);

%Set fundamental period of x
%function x, variable T = 16
subplot(5,1,5);
g5 = subs(f,'t','-2*t+1');

%plot the continuous time time function
ezplot(g5);

%Export JPG to working directory
hgexport(gcf, 'Lab02/fig5.jpg', hgexport('factorystyle'), 'Format', 'jpeg');

clearvars

%**************************************************************
%**************************************************************

% 1.8 Part A

%**************************************************************

%Symbolic functions to be used in this problem
x1 = sym('cos(pi*t/5)');
x2 = sym('sin(pi*t/5)');
x3 = sym('exp(i*2*pi*t/3)+ exp(i*pi*t)');


%**************************************************************

% 1.8 Part B

%**************************************************************

figure()

subplot(4,1,1)
%plot the continuous time time function
ezplot(x1,[0,6*pi]);

subplot(4,1,2)
%plot the continuous time time function
ezplot(x2,[0,6*pi]);

subplot(4,1,3)
%plot the continuous time time function
ezplot(compose('real(x3)',x3),[0,6*pi]);

subplot(4,1,4)
%plot the continuous time time function
ezplot(compose('imag(x3)',x3),[0,6*pi]);

%Export JPG to working directory
hgexport(gcf, 'Lab02/fig6.jpg', hgexport('factorystyle'), 'Format', 'jpeg');

%**************************************************************

% 1.8 Part C

%**************************************************************

sym a;

E1 = sym('int((abs(x1)^2))',t,a,-a);
E2 = sym('int((abs(x2)^2))',t,a,-a);
E3 = sym('int((abs(x3)^2))',t,a,-a);










