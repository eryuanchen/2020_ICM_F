function dy=func_SEIR(t,y)
global r beta N gamma  r2beta2 r3beta3
I = y(1);
S = y(2);
R = y(3);
E = y(4);
a = y(5);
dI = a*E-gamma*I;
dS = -r*beta*I*S/N-r2beta2*S;
dR = gamma*I;
dE = r*beta*I*S/N-a*E+r2beta2*S;
da = 0.01*a
dy=[dI;dS;dR;dE;da];
end
