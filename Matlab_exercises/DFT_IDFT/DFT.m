% @Author:Balasubramanyam Evani
% EC1634 DSP LAB
% DFT (Discrete Fourier Transform)

x = [1 ; 2 ; 2 ; 3 ; 3 ; 4];
N = 6;
w = 2*pi;
M = zeros(6,6);

for n = 1:6
    for k = 1:6
        coff = (n - 1) * (k - 1);
        val = exp((-1i*w*coff)/N);
        M(n,k) = val;
    end
end
X = M*x;
Xabs = abs(X);
subplot(2,1,1),stem(Xabs),xlabel('i/p'),ylabel('o/p'),title('Magnitude');
P = unwrap(angle(X));
subplot(2,1,2),stem(P*180/pi),xlabel('i/p'),ylabel('o/p'),title('Phase');