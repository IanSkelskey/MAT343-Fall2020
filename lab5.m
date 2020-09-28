diary lab5.txt
format compact

% MAT 343 MATLAB Assignment # 5

% Exercise 1

dat = load('gco2.dat');

year = dat(:,1);
conc = dat(:,2);

plot(year,conc,'o');

% Exercise 1(a)

format short e

X = [ones(size(year)),year];
z = X'*conc;
S = X'*X;
U = chol(S);
w = U'\z;
c = U\w
plot(year,conc,'o');
q = year;
fit = c(1)+c(2)*q;
hold on
plot(q,fit,'r','linewidth',2);
axis tight

% Exercise 1(b)

format short e

X = [ones(size(year)),year,year.*year]
z = X'*conc;
S = X'*X;
U = chol(S);
w = U'\z;
c = U\w
q = year;
fit = c(1)+c(2)*q +c(3)*q.*q;
hold on
plot(q,fit,'b','linewidth',2);
axis tight
legend('data points','linear fit','quadratic fit','location','northwest')

% Exercise 2

time = [0,5,10,15,20,25]';
balance = [13*10^3, 14.4*10^3, 15.3*10^3, 18.3*10^3, 18.9*10^3, 21.6*10^3]';

% Exercise 2(a)

Y = log(balance)
hold off
plot(time,Y,'x');
X = [ones(size(time)),time]
z = X'*Y;
S = X'*X;
U = chol(S);
w = U'\z;
c = U\w
q = time;
fit = c(1)+c(2)*q;
hold on
plot(q,fit,'r','linewidth',2);
legend('data points','linear fit','location','northwest')

% Exercise 2(b) & 2(c)

hold off

fit = exp(c1+c2*q);
t30k = (log(30000) - c1)/c2 % Time to reach $30,000
plot(time,balance,'x');
hold on
plot(q,fit,'r','linewidth',2);
legend('data points', 'exponential fit','location','northwest')

% Exercise 3(a)

m = [1:1:12]';
Y = [5.8,6.6,7.4,7.9,7.6,7.4,6.7,6.7,7.2,7.1,6.1,5.4]';
hold off
X = [ones(size(m)),m, m.*m,m.*m.*m, m.*m.*m.*m];             % build the matrix X for linear model
z = X'*Y;                         % right hand side of the Normal Equations
S = X'*X;                         % Left hand side of the Normal Equations
U = chol(S);                      % Cholesky decomposition
w = U'\z;  %solve the normal equations using the Cholesky decomposition
c = U\w
plot(m,Y,'o')   % plot the data points
q = 1:.25:12;   % define a vector for plotting the linear function
fit = c(1)+c(2)*q+c(3)*q.*q+c(4)*q.*q.*q+c(5)*q.*q.*q.*q;  %define the polynomial fit of degree 4 
hold on 
plot(q,fit,'r');  % plot the quartic fit together with the data points
axis tight

% Exercise 3(b)

hold off
c = X \ Y
c = c ([5: -1:1]) ;
q = 1:0.1:12;
z = polyval (c , q ) ;
figure
plot (q ,z ,m ,Y ,'o') ;
axis tight
