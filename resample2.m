clc;
clear all;
close all;

[x, fs] = audioread('10khz.wav');
fix_x = x(:,1);
y = upsampling(fix_x,4);
l = lowpassfilter(y, 4);
h = downsampling(l,5);


figure
subplot(4,1,1);
plot(fix_x);
title('original signal');
subplot(4,1,2);
plot(y);
title('upsampling to 110kHz by zero padding');
subplot(4,1,3);
plot(l);
title('low-pass filter 110kHz');
subplot(4,1,4);
plot(h);
title('decimation to 22 kHz');

figure
subplot(4,1,1)
specgram(fix_x);
title('spectrum of original signal');
subplot(4,1,2)
specgram(y);
title('spectrum of upsampling signal');
audiowrite('upsample(40k).wav', y,40000);
subplot(4,1,3)
specgram(l);
title('spectrum of low-pass filter 110kHz');
audiowrite('low-pass filter 40kHz.wav', l,40000);
subplot(4,1,4)
specgram(h);
title('spectrum of downsampling signal');
audiowrite('downsample(8k).wav', h,8000);

