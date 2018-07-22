% @Author:Balasubramanyam Evani
% EC1634 DSP LAB
% Using built in circular convolution function

x1 = [1,2,3,4];
x2 = [1,2,1,2];

res = cconv(x1,x2,4);
stem(res),xlabel('input'),ylabel('output'),title('Circular Conv using Built-In');