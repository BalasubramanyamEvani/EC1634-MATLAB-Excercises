% @Author:Balasubramanyam Evani
% EC1634 DSP LAB
% IDFT
% Here X I have taken from the output obtained from DFT.m

clc;
clear all;

X = [15.0000 - 0.0000i , -1.5000 + 2.5981i , -1.5000 + 0.8660i , -3.0000 - 0.0000i , -1.5000 - 0.8660i , -1.5000 - 2.5981i];
N = 6;
w = 2*pi;
M = zeros(6,6);

for n = 1:6
    for k = 1:6
        coff = (n - 1) * (k - 1);
        val = exp((i*w*coff)/N);
        M(n,k) = val;
    end
end

x = X * M;
x = x ./ N;
xabs = abs(x);

subplot(2,1,1),stem(xabs),xlabel('i/p'),ylabel('o/p'),title('Magnitude');

P = unwrap(angle(x));

subplot(2,1,2),stem(P*180/pi),xlabel('i/p'),ylabel('o/p'),title('Phase');