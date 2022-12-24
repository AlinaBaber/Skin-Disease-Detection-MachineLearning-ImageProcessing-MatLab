clc;   close all;   clear all;
Ap = csvread('a.csv' );
Xint_v = csvread('b.csv' );
Uk = randn(1,200);
Qu = cov(Uk);
Vk = randn(1,200);
Qv = cov(Vk);
C = csvread('x.csv' );
n = 100;
[YY XX] = KLMN(Ap,Xint_v,Uk,Qu,Vk,Qv,C,n);
for it = 1:1:length(XX)
    MSE(it) = YY(it) - XX(it);
end
tt = 1:1:length(XX);
figure(1);   subplot(211);   plot(XX);   title('ORIGINAL Data');
subplot(212);   plot(YY);   title('ESTIMATED state');
figure(2); plot(tt,XX,tt,YY); title('Combined plot'); legend('original','estimated');
figure(3);   plot(MSE.^2);   title('Mean square error');
