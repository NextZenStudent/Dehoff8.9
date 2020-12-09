axis([0,1,0,1])

a = 9600;
b = 13200;
K = 4000;

R = 8.314;
T = 500;
x = linspace(0,1,100);

b = ((2*a.*x + b.*(1-2.*x))*(1-T/K)/R/T).*(1-x).^2;
ac = x.*exp(b);

h = animatedline;


h.Color = 'red';
h.LineWidth = 4;
set(gcf, 'Position',  [300, 300, 600, 600])

for k = 1:length(x)
    addpoints(h,x(k),ac(k));
    drawnow
end
