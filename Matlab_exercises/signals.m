% @Author:Balasubramanyam Evani
% EC1634 DSP LAB
% Demonstration of basic signals

time = (-1 : 0.01 : 1)';
impulse = time == 0;
step = time>=0;
ramp = time .* step;
expo = exp(3*time);
subplot(4,1,2),plot(time,step),xlabel('time'),ylabel('ouptut'),title('Step Func')
subplot(4,1,3),plot(time,ramp),xlabel('time'),ylabel('ouptut'),title('Ramp Func')
subplot(4,1,1),plot(time,impulse),xlabel('time'),ylabel('ouptut'),title('Impulse Func')
subplot(4,1,4),plot(time,expo),xlabel('time'),ylabel('ouptut'),title('Expo Func')