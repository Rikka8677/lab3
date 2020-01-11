function y = upsampling(x, times)
    temp = zeros(1,times*length(x));
    for i = 0:length(x)-1
        temp(i*times+1) = x(i+1);
    end
    y = temp;
end