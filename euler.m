function [error, value] = euler(a, b, n, f, t0, y0)

error = 0;
value = 0;

h = (b-a)/n;
t = ones(1, n+1); %initialize the 
y = ones(1, n+1); % y and t to plot and visulaize them
y(1) = y0;
t(1) = t0;

for i=2:n-1,
    y(i+1) = y(i) + h*f(t(i), y(i));
    t(i+1) =  t(i) + h;
end
    


hold on;
plot(t,y,'b');
    
end