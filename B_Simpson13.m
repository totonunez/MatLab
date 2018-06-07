%DEBEMOS CREAR UNA FUNCION QUE NOS AYUDE A CALCULAR LA FUERZA POR EL METODO
%DE EL TRAPECIO
% w(z) = ancho de el rio con respecto a la altura
% z = altura
% p(z) = determina la presion de el rio con respecto a la altura
% rho = densidad del agua
% g = aceleración de gravedad
% D = elevación en metro de la superficie del rio
clc;
clear;
D = 60; %METROS
rho = 1000; %KG/M^3
g = 9.8;%METROS/SEGUNDO^2 
z0=[0 10 20 30 40 50 60];
w0=[122 130 135 160 175 190 200];
long = length(z0);
%dividir por la cantidad de intervalos
%el ultimo menos el primer valor del metodo
sumaFuerza = 0;

for i=1:long-1
%Debemos calcular la fuerza itnerior conrespecto a cada intervalo
funcion = @(z)((((w0(i+1)- w0(i))/(z0(i+1)-z0(i)))*z + w0(i)).*(D-z));
fuerza = integral(funcion,z0(1),z0(2));
sumaFuerza = sumaFuerza + rho*g*fuerza;
x(i)= rho*g*fuerza;
end
sumaFuerza