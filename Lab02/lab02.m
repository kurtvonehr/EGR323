%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Kurt VonEhr
% 5/15/14
% EGR323 - Ward
% Lab 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%**************************************************************

% 1.6 Part A

%**************************************************************

%Create symbolic continuous-time sinusoid
x = sym('sin(2*pi*t/T)');

%Set fundamental period of x
%function x, variable T = 5
x5 = subs(x,'T',5);

%plot the continuous time time function
figure();
ezplot(x5);

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










