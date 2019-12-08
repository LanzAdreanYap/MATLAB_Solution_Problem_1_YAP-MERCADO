%Initialize the value of the function f from n =0 to n =99
n = 0:99;
f = n.^2 - 7;
% Create a range of values from 1 to 100 and store it to m
% it will serve as the index checker for f 
for m = 1:100
    if m <= 10 % if the index of f is less than or equal to 10
        f(m) = f(m); % calls the value of f either when n = 0 to n = 9, the first set of values that satisfies the first equation
    elseif m >= 11 % if the index of f is greather than or equal to 11
        a = m; % store m to a
        while a>10 % this evaluates the function when n persists to be greather than 10
            a = a-10; % subtract 10 from a and the while loop starts over until a becomes <= 10
        end
        if a <= 10 % the value of a will serve as n
            f(m) = f(a); % evaluate the function f when n = a and will be stored to f at index m
        end
    end
end

% plot the function of f from n = 0 to n = 99 using stem() function
stem(n,f)
% turn on grid lines
grid on 
% label the graph 
xlabel 'n'; ylabel 'f(n)'
title 'Graph of f(n) from n = 0 to n = 99'