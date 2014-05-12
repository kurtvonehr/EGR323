%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Kurt VonEhr
% 5/8/14
% EGR323 - Ward
% Lab 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part 1

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%number of samples for each graph
samples = 500;

%preallocate the array for step function
step = zeros(1,samples);
%preallocate the array for ramp function
ramping = zeros(1,samples);
%preallocate the array for rect function
rec = zeros(1,samples);

%create x-axis values
x = -2:(4/(samples-1)):2;

for k = 1:samples
    step(k) = us(x(k));
    ramping(k) = ramp(x(k));
    rec(k)  = rect(x(k));
end

figure()
plot(x,step,x,ramping,x,rec);
xlabel('Units');
ylabel('Value');
title('Basic Input Signal Functions');
legend('Step Function','Ramp Function','Unit Ramp Function');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 2
% Part A

% Create a continous time sine function

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

frequency = 1/16;

%create x-axis values
time = 0:.01:36;

for k = 1:size(time,2)
   
    sin_function(k) = sin(2*pi*frequency*time(k));
    
end

figure()
plot(time,sin_function);
xlabel('Time');
ylabel('Value');
title('CT Sine Wave');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 2
% Part B

% Create a discrete time sine function

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%clear variables
clearvars

%Function frequency
frequency = 1/16;

% create sampled time vector
time = 0:1:36;

for k = 1:size(time,2)
   
    sin_function(k) = sin(2*pi*frequency*time(k));
    
end

figure()
plot(time,sin_function);
xlabel('Time');
ylabel('Value');
title('CT Sine Wave');

















