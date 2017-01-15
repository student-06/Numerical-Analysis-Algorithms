Show that if A is compact, d(x, A) = d(x, a) for some a ∈ A.function [error, value]  = simpson_quad(a, b, n, f)

error = 0;
value = 0;

h = (b-a)/(2*n);
%disp(h);
x = a + [0:2*n].*h ; 

y = f(x);

%size(y)

%disp(x);
%disp(y);

odd = (1:2:2*n+1);
even = (2:2:2*n);
idx = zeros(1, n);

idx(odd) = 2;
idx(even) = 4;
idx(2*n+1) = 1; 
idx(1) = 1;

value = (h/3)*(y*transpose(idx));
disp(value)

end