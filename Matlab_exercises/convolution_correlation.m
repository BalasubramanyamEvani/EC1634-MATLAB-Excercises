% @Author:Balasubramanyam Evani
% EC1634 DSP LAB
% showing convolution and correlation of two discrete signals x1 and x2

x1 = input('first sequence -> ');
x2 = input('second sequence -> ');

x3 = conv(x1 , x2 ,'full'); %convolution
x4 = xcorr(x1 , x2); %correlation

subplot(4,1,1),stem(x1),xlabel('i/p'),ylabel('o/p'),title('first signal');
subplot(4,1,2),stem(x2),xlabel('i/p'),ylabel('o/p'),title('second signal');
subplot(4,1,3),stem(x3),xlabel('i/p'),ylabel('o/p'),title('convolution');
subplot(4,1,4),stem(x4),xlabel('i/p'),ylabel('o/p'),title('correlation');