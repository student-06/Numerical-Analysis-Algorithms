syms x;
f = input('Enter the function');
fd = diff(f, 1);
x0 = input('Enter the inital guess for the root of the equation');
eps = 1e-4;
found = 0;
for i=1:100,
    
    x1 = x0 - eval(subs(f,'x',x0))/eval(subs(fd, 'x', x0));
    if abs(x1- x0) < eps,
        found = 1;
        fprintf('the root is %f', x1);
        break
    end
    
    x0 = x1;
end

if ~found,
    fprintf('your guess is not awesome. ');
end


fprintf('\nThe value of f at root is %f', eval(subs(f, 'x', x1)));