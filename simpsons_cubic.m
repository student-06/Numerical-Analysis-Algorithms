function [error, value] = simpsons_cubic(a, b, n, f)
   
    error  = 0;
    value = 0;
    h = (b-a)/(3*n);
    x = a + [0:3*n].*h;
    %disp(x);
    %size(x);
    
    y = f(x);
    %disp(y);size(y);
    
    idx = 3*ones(3*n+1, 1);
    multiple_of_three = (1:3:3*n);
    idx(multiple_of_three) = 2;
    idx(1) = 1;
    idx(3*n+1) = 1;
    
    %disp(idx);
    
    
    value = (3*h/8)*(y*idx);
    disp(value);
    
    
    

end
