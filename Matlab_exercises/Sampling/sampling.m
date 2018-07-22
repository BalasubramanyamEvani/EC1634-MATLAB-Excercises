% @Author:Balasubramanyam Evani
% EC1634 DSP LAB
% Script Demonstrates Sampling of a Sinusoid Signal

Signal_Frequency = input('Enter Frequency of Sinusoid -> ');
Amplitude = input('Enter Amplitude -> ');

fs_first = Signal_Frequency;
fs_second = 2*Signal_Frequency;
fs_third = 8*Signal_Frequency;

Ts_first = 1/fs_first;
Ts_second = 1/fs_second;
Ts_third = 1/fs_third;

tmin = -.05;
tmax = .05;

nmin_1_1 = ceil( tmin / Ts_first );
nmin_1_2 = floor( tmax / Ts_first );

n1 = nmin_1_1 : nmin_1_2;

nmin_2_1 = ceil( tmin / Ts_second );
nmin_2_2 = floor( tmax / Ts_second );

n2 = nmin_2_1 : nmin_2_2;

nmin_3_1 = ceil( tmin / Ts_third );
nmin_3_2 = floor( tmax / Ts_third );

n3 = nmin_3_1 : nmin_3_2;

t = linspace(tmin , tmax , 400);

signal = Amplitude * cos(2 * pi * Signal_Frequency * t);

first = Amplitude * cos(2 * pi * Signal_Frequency * Ts_first * n1);
second = Amplitude * cos(2 * pi * Signal_Frequency * Ts_second * n2);
third = Amplitude * cos(2 * pi * Signal_Frequency * Ts_third * n3);

subplot(4,1,1), plot(t , signal), xlabel('time') , ylabel('magnitude'), title(['Original Signal-- fm =' num2str(Signal_Frequency) 'hz ,Amplitude=' num2str(Amplitude)])
subplot(4,1,2),stem(n1*Ts_first,first,'*'), xlabel('time') , ylabel('magnitude'), title('Sampling less than 2*fm, fs = fm')
subplot(4,1,3),stem(n2*Ts_second,second,'*'), xlabel('time') , ylabel('magnitude'), title(['Sampling Equal to 2*fm , fs = ' num2str(Signal_Frequency * 2) 'hz'])
subplot(4,1,4),stem(n3*Ts_third,third,'*'), xlabel('time') , ylabel('magnitude'), title(['Sampling Greater than 2*fm , fs = ' num2str(Signal_Frequency * 8) 'hz' ])