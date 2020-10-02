
x1 = [ 0.1e-9 0.1e-9 0.1e-9 0.1e-9 0.1e-9 0.1e-9 0.1e-9 0.1e-9 0.1e-9 0.1e-9] % Lower bound of parameters
x2 = [1 1 1 1 1 1 2 2 2 2] %Upper bound for parameters
A = [0 -1 0 0 2 0 0 0 0 0; 0 0 0 0 1 0 -1.5 0 0 0];
b = [0;0];
Aeq = [0 0 0 0 0 1 0 -1 0 0];
beq = [2.268e-6];

x0 =  [4.4020e-09,1.0005e-10,5.4308e-05,2.1123e-10, 1.8759e-10, 1.6735e-10,1.0291e-10,0.2312,4.6386e-06,0.2312]; % Array of initial guess of the parameters values
options = optimset('Display','iter','PlotFcns',@optimplotfval,'MaxIter', 5000, 'TolX',1e-9);
[x, fval] = fmincon(@simulation,x0,A,b,Aeq,beq,x1,x2,[],options)
%  [x,fval] = fminsearch(@simulation,x,options)
 save('x','x')