

f = inline(input('Enter the first function\n', 's'));
x0 = input('first guess\n');
x1 = input('second guess\n');

eps  = 1e-7;


for i=1:1000,
    temp = x1;
    x1 = x1 - f(x1)*(x0-x1)/(f(x0) - f(x1));
    x0 = temp;
    fprintf('here\n');
    if (abs(x1-x0) < eps),
        fprintf('%d\n',i);
        break;
    end
    
    fprintf('The value for %.2f    is    %.2f\n',x1,f(x1));
    
end

fprintf('The root is %f', x1);

