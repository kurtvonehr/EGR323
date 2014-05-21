%**************************************************************

% 1.8 Part A

%**************************************************************

%Symbolic functions to be used in this problem
x1 = sym('cos(pi*t/5)');
x2 = sym('sin(pi*t/5)');
x3 = sym('exp(i*2*pi*t/3)+ exp(i*pi*t)');
x3_conj = sym('exp(-i*2*pi*t/3)+ exp(-i*pi*t)');


%**************************************************************

% 1.8 Part B

%**************************************************************

figure()

subplot(4,1,1)
%plot the continuous time function
ezplot(x1,[0,6*pi]);

subplot(4,1,2)
%plot the continuous time function
ezplot(x2,[0,6*pi]);

subplot(4,1,3)
%plot the continuous time function
ezplot(compose('real(x3)',x3),[0,23/6*pi]);

subplot(4,1,4)
%plot the continuous time function
ezplot(compose('imag(x3)',x3),[0,23/6*pi]);

%Export JPG to working directory
hgexport(gcf, 'EGR323/Lab02/fig6.jpg', hgexport('factorystyle'), 'Format', 'jpeg');

%**************************************************************

% 1.8 Part C

%**************************************************************

syms a;

E1 = int((x1^2),'-a','a');

E2 = int((x2^2),'-a','a');

E3 = int((x3*x3_conj),'-a','a');



%**************************************************************

% 1.8 Part D

%**************************************************************


%Energy in a single period of the function
%Full period is 5*2*pi/pi = 10sec

A1 = subs(E1,'a',5)

A2 = subs(E2,'a',5)

A3 = subs(E3,'a',3)

%Energy as alpha increases from 0 to 30

for k = 1:30
    
    E1_2(k) = int((x1^2),0,k);

    E2_2(k) = int((x2^2),0,k);

    E3_2(k) = int((x3*x3_conj),0,k);
    
end

figure()
subplot(1,3,1)
ezplot(E1_2)
subplot(1,3,2)
ezplot(E2_2)
subplot(1,3,3)
ezplot(E3_2);


%**************************************************************

% 1.8 Part E

%**************************************************************

%Time average power as alpha increases from 0 to 30

for k = 1:60
    
    P1(k) = int((x1^2),0.1,k)/(k-.1);

    P2(k) = int((x2^2),0.1,k)/(k-.1);

    P3(k) = int((x3*x3_conj),0.1,k)/(k-.1);
    
end

figure()
subplot(1,3,1)
ezplot(P1)
subplot(1,3,2)
ezplot(P2)
subplot(1,3,3)
ezplot(P3)



%**************************************************************

% 1.8 Part F

%**************************************************************

%Symbolic functions to be used in this problem

syms a P;

P1 = int((x1^2)/(2*a),'-a','a')

P2 = int((x2^2)/(2*a),'-a','a')

P = P1 + P2





















