%ejemplo de integrales

z0=[0 10 20 30 40 50 60];
w0=[122 130 135 160 175 190 200];



funcion = @(x)(((w0(2)- w0(1))/(z0(2)-z0(1)))*x/3 + w0(3));
fuerza = integral(funcion,z0(1),z0(2))





