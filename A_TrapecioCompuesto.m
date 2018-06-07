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
h=(z0(long)-z0(1))/6;
sumaFuerza=0;

for i=1:long-1
fuerza = rho*g*h*((w0(i)+w0(i+1)))*(D-(z0(i)+z0(i+1))/2);
sumaFuerza = sumaFuerza + fuerza
end