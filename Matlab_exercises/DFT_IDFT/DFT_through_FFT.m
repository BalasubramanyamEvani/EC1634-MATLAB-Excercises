% @Author:Balasubramanyam Evani
% EC1634 DSP LAB
% DFT using in built fft function

x = [1 , 2 , 2 , 3 , 3 , 4];
y = fft(x);
p = unwrap(angle(y));
m = abs(y);
subplot(2,1,1),stem(m),xlabel('x'),ylabel('o/p'),title('DFT through FFT magnitude');
subplot(2,1,2),stem(p),xlabel('x'),ylabel('o/p'),title('DFT through FFT phase');