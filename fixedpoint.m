syms x;
g = input('enter the function', 's');
x0 = input('Initial guess\n');
eps = 1e-5;
maxIterations = 100;
found = 0;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% checking conditons





%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
for i=1:maxIterations,
    x1 = eval(subs(g, 'x', x0));
    
    if (abs(x1-x0) < eps),
        fprintf('the root is %f', x1);
        found = 1;
        break;
    end
        
   
    fprintf('x0 = %f, x1 = %f\n',x0, x1);
    x0 = x1;
  

end

if (found==0),
    fprintf('build some theory.\n');
end

fprintf('\nThe value of f at root is %f', eval(subs(f, 'x', x1)));

