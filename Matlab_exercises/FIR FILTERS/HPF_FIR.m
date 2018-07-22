% @Author:Balasubramanyam Evani
% EC1634 DSP LAB
%% Design of FIR High pass filter with order N and cut-off frequenct Wc

close all;
clc;
clear all;

wc = input('Enter Value of  cut-off frequency -> ');
N = input('Order of filter -> ');
alpha = (N - 1) / 2;
n = 0 : 1 : N - 1;
eps = 0.0001;

hdn = (sin (pi .*(n - alpha)) - sin(wc .* (n - alpha + eps))) ./ (pi .* (n - alpha + eps));

rect_win = n <= (N - 1);
hamming_win = 0.54 - 0.46 .* cos((2*pi .*n) ./ (N-1));
hanning_win = 0.5 - 0.56 .* cos ((2*pi .* n) ./ (N - 1));
blackman_win = 0.42 - 0.56 .* cos((2*pi .*n)./(N-1)) + 0.08 .* (cos(4*pi .*n) ./ (N-1));

hn_1 = hdn .* rect_win;
hn_2 = hdn .* hamming_win;
hn_3 = hdn .* hanning_win;
hn_4 = hdn .* blackman_win;

w = 0 : 0.01 : pi;
h1 = freqz(hn_1 , 1 , w);
plot(w , abs(h1) , 'blue');
hold on;

h2 = freqz(hn_2 , 1 , w);
plot(w , abs(h2) , 'red');

hold on;

h3 = freqz(hn_3 , 1 , w);
plot(w , abs(h3) , 'green');

hold on;

h4 = freqz(hn_4 , 1 , w);
plot(w , abs(h4) , 'yellow');

hold on;

legend('rectangular window','hamming window','hanning window','blackmann window');
xlabel('frequency ->');
ylabel('Magnitude -> ');
