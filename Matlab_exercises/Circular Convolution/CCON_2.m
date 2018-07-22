% @Author:Balasubramanyam Evani
% EC1634 DSP LAB
% using fft and ifft method for calculating circular convolution

x1 = [1,2,3,4];
x2 = [1,2,1,2];
X = fft(x1);
H = fft(x2);
mul = X .* H;
inv = ifft(mul);
stem(inv),xlabel('input'),ylabel('output'),title('Circular Conv using DFT-IDFT');