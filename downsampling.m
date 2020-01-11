function y = downsampling(x,times)
    for i = 0:times:length(x)-1
        y(i/times+1) = x(i+1);
    end
end