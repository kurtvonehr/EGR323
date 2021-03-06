%**************************************************************
% Kurt VonEhr 5/8/14 EGR323 - Ward Lab 1
%**************************************************************



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Part 1

%Create a set of m.files that will generate the following functions. Then
%create a script file that will display all 3 functions on a common plot
%for a range of -2 < t < 2. Make sure you use enough points such that the
%curves appear �smooth�. Include titles and axis labels for all figures.

%**************************************************************


%number of samples for each graph
samples = 100;

%preallocate the array for step function
step = zeros(1,samples);
%preallocate the array for ramp function
ramping = zeros(1,samples);
%preallocate the array for rect function
rec = zeros(1,samples);

%create x-axis values
x = -2:(4/(samples-1)):2;

%Create arrays with correct values
for k = 1:samples
    step(k) = us(x(k));
    ramping(k) = ramp(x(k));
    rec(k)  = rect(x(k));
end

%Plot overlayed graph of each function
figure()
plot(x,step,'--',x,ramping,'*',x,rec);
xlabel('Units');
ylabel('Value');
title('Basic Input Signal Functions');
legend('Step Function','Ramp Function','Unit Ramp Function');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 2

% Create and execute a MATLAB script file to a. Generate and plot f(t) =
% sin (2? fo t) with fo = 1/16 Hz for 0 < t < 36, with data points every
% 0.01 seconds to represent a CT signal. b. Sample the CT function f(t)
% with a sample frequency (fs) of 1 Hz to produce a DT function g(n). i.e.
% g(n) = sin (2? fo n/fs) or g(n) = sin (2?Fon) with Fo = fo / fs. NOTE: ()
% and [] mean different things in MATLAB so even though DT functions should
% be written as g[n] in MATLAB we must still write them as g(n) c. Overlay
% g(n) on top of f(t), using hold on/off and stem. Remember that DT
% functions are only defined for integer values, so g(n) should only have
% 36 data points between 0 < t < 36


%**************************************************************

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 2 Part A

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

frequency = 1/16;

%create x-axis values
time = 0:.01:36;

for k = 1:size(time,2)
   
    sin_function(k) = sin(2*pi*frequency*time(k));
    
end

figure()
plot(time,sin_function);
hold on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 2 Part B

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

stem(time,sin_function);
xlabel('Time');
ylabel('Value');
title('CT and DT Sine Waves');


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Problem 3 Part A,B,C,D
% 
% Create and execute a MATLAB script file, similar to problem 2, that will
% sample f(t) = sin (2? fo t) with fo = 1/16 Hz using the following sample
% rates. Display the results, g(n), on four subplots, where g(n) = sin (2?
% fo n/fs) or g(n) = sin (2?Fon) with Fo = fo / fs. Where possible identify
% the periodicity of the resulting discrete time function, g(n). It may be
% necessary to extend the graphs beyond 36 samples to see periodicity. See
% Roberts page 81 for examples of the graphs. a. Ts = 2, fs = 0.5 Hz, Fo =
% 2/16 b. Ts = 11, fs = 1/11 Hz, Fo = 11/16 c. Ts = ?, fs = 1/? Hz, Fo =
% ?/16 d. Ts = 16, fs = 1/16 Hz, Fo = 1

%**************************************************************


%clear the variables from memory
clearvars

F_o = 2/16;

for k = 1:36
    sin_function1(k) = sin(2*pi*F_o*k);
end

figure()
subplot(2,2,1)
stem(sin_function1);
axis([0 36 -1 1]);
xlabel('Samples');
ylabel('Value');
title('Fo = 2/16');

%clear variables
clearvars

F_o = 11/16;

for k = 1:36
    sin_function1(k) = sin(2*pi*F_o*k);
end

subplot(2,2,2)
stem(sin_function1);
axis([0 36 -1 1]);
xlabel('Samples');
ylabel('Value');
title('Fo = 11/16');

%clear variables
clearvars


F_o = pi/16;

for k = 1:36
    sin_function1(k) = sin(2*pi*F_o*k);
end

subplot(2,2,3)
stem(sin_function1);
axis([0 36 -1 1]);
xlabel('Samples');
ylabel('Value');
title('Fo = pi/16');

%clear variables
clearvars

F_o = 1;

for k = 1:36
    sin_function1(k) = sin(2*pi*F_o*k);
end

subplot(2,2,4)
stem(sin_function1);
axis([0 36 -1 1]);
xlabel('Samples');
ylabel('Value');
title('Fo = 1');







