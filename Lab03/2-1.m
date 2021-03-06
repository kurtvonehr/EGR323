%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Kurt VonEhr
% 5/22/14
% EGR323 - Ward
% Lab 3
% Complete 2.2 and 2.10 a-e
% Complete 2.1, 2.7a-e, and 2.8a-e
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Close all existing windows
close all

%**************************************************************

% 2.1 Part B

%**************************************************************

%number of samples for our discrete function
n = 100;

%Create unit step function using heaviside function

for k = 1:n
    t = (5/n)*k;
    x(k) = Heaviside(t)-Heaviside(t-5);
end

%convolves the function x with itself
y = conv(x,x);

ezplot(y);