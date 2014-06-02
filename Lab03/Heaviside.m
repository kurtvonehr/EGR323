function f = Heaviside(t)

%Heaviside unit step function
%f = Heavisde(t) return a vector f the same size as
%the input vector, where each element of f is 1 if the 
%corresponding element of t is greater than or equal to
%zero

f = (t>=0);