function y = lowpassfilter(x, Ntimes)
[b a] = butter(10,1/Ntimes);
y = Ntimes*filter(b,a,x);
freqz(b, a);
end