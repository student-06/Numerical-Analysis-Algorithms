clc;
clear;
f = inline(input('Enter the first function\n', 's'));
p0 = 4.5;
p1 = 5.5;
p2 = 6;
maxIterations = 100;
eps = 1e-4;
found = 0;
for i=1:maxIterations,
    h1 = p1 - p0;
    h2 = p2 - p1;
    d1 = (f(p1) - f(p0))/h1;
    d2 = (f(p2) - f(p1))/h2;
    a = (d2-d1)/(h1+h2);
    c = f(p2);
    b = a*h2 + d2;
    
    
    p2_temp = p2;
    %p1_temp = p1;
    p2 = p2 - (2*c)/(b + (b/abs(b))*((b^2 - 4*a*c)^0.5));
    p0 = p1;
    p1 = p2_temp;
    %p0 = p1_temp;
    
    if abs(f(p2))<eps,
        fprintf('The root is %f\n',p2);
        found = 1;
        break;
    end
    
    fprintf('%f %f %f\n', p0, p1, p2);
    
    
end

if found ==  0,   
    fprintf('Not desired accuracy obtained btw, root is %f\n', p2);
end





