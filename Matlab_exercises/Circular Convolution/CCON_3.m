% @Author:Balasubramanyam Evani
% EC1634 DSP LAB
% Circular Convolution Example

x1 = [1;2;3;4];
x2 = [1,2,1,2];
M = zeros(4,4);

first = 2; % starting point of loop
last = 4;  % represents the number of elts
count = 0;
for j = count : last/2 
    temp = x2(first);
    x2(first) = x2(last);
    x2(last) = temp;
    first = first + 1;
    last = last - 1;
end
for j = 1 : 4
    if j ~= 1
        x2 = circshift(x2 , [0,-1]);
    end
    for i = 1:4
        M(j,i) = x2(i);
    end
end
Y = M * x1;
stem(Y),xlabel('input'),ylabel('output'),title('Circular Conv using Matrix Operation');