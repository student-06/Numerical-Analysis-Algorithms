

function [error, value] = trapezoidal(a, b, n, f)

    error  = 0;
    value = 0;

    h = (b-a)/(n);
    x = a + [0:n].*h;

    y = f(x);

    idx = 2*ones(n+1, 1);
    idx(1) = 1;
    idx(n + 1) = 1;

    %disp(x);    
    %disp(y);
    %disp(idx);



    
    value = (h/2)*(y*idx);
    disp(value);


end