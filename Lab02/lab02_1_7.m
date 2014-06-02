%**************************************************************

% 1.7 Part A

%**************************************************************


figure();

%Create symbolic ramp function using heaviside function
f = sym('t*(Heaviside(t)-Heaviside(t-2))');

%plot the continuous time time function
ezplot(f);

%Export JPG to working directory
hgexport(gcf, 'EGR323/Lab02/fig4.jpg', hgexport('factorystyle'), 'Format', 'jpeg');

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
title({'1.7 C';' ';['g1(t) =', char(g1)]});
axis normal

%Set fundamental period of x
%function x, variable T = 8
subplot(5,1,2);
g2 = subs(f,'t','t+1');

%plot the continuous time time function
ezplot(g2);
title(['g2(t) =', char(g2)]);
axis normal

%Set fundamental period of x
%function x, variable T = 16
subplot(5,1,3);
g3 = subs(f,'t','t-3');

%plot the continuous time time function
ezplot(g3);
title(['g3(t) =', char(g3)]);
axis normal

%Set fundamental period of x
%function x, variable T = 8
subplot(5,1,4);
g4 = subs(f,'t','-t+1');

%plot the continuous time time function
ezplot(g4);
title(['g4(t) =', char(g4)]);
axis normal

%Set fundamental period of x
%function x, variable T = 16
subplot(5,1,5);
g5 = subs(f,'t','-2*t+1');

%plot the continuous time time function
ezplot(g5);
title(['g5(t) =', char(g5)]);
axis normal

%Export JPG to working directory
hgexport(gcf, 'EGR323/Lab02/fig5.jpg', hgexport('factorystyle'), 'Format', 'jpeg');

clearvars

%**************************************************************

%Run script for next problem
lab02_1_8