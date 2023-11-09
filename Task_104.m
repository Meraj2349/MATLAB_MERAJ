function Newton_Raphson = Task_004 ()

function y = f(x)
    y = x.^2-2;
end

function S = g(x)
      S = 2*x;
  end

 roots = [];

c= 1.5;
roots = [];
tangent_lines=[];
i = 0;
tc=100000;
while (tc>0)

    roots = [roots; c];
    tangent_lines = [tangent_lines; [c,f(c),g(c)]];

      if(g(c)==0)
      fprintf("Divisible by zero");

     else

    if f(c) == 0
        break;

    else

       k = (c - (f(c)/g(c))) ;
       c=k;
    end
  end

    i = i + 1;
    tc=tc-1;
end

fprintf('Number of iterations need is: %d\n', i);
fprintf("The root is: ");
disp(c);

 x = linspace(0, 10, 1000);
 y = f(x);

 figure;
 plot(x, y);
hold on;
plot(roots, f(roots),'ro');

for i= 1:length(roots)
      x1= roots(i)-1:0.01:roots(i)+1;
      y1= tangent_lines(i,2)+ tangent_lines(i,3)*(x1-roots(i));
      plot(x1,y1,'k--');
   end;
hold off;
xlabel('Values of x');
ylabel('Values of f(x)');
title('Newton Raphson Method');
legend('f(x)=x^3-2x^2-4', 'Roots', 'Tangent Lines');
grid on;
endfunction