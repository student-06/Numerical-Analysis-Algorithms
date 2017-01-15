f = inline(input('Enter the function', 's'));
a = input('first guess');
b = input('second guess');

eps = 1e-5;

for i=1:500,
    mid = (a+b)/2.0;
    y  = f(mid);
    if( y==0 || (b-a)/2.0 < eps ),
        fprintf('the root is %f\n', mid);
        break
    elseif(y*f(a) > 0),
        a = mid;
    else
        b = mid;
        
    end
    
end

fprintf('OOps \n')
