clc;
clear;
%En el siguiente documento aprenderemos como aplicar
%Polinomios con los siguientes c�digos

P = [1 2 3]; % equivalente a x^2+2*x +3
polyval(P,2);

%multiplicar polinomios
Q=[1 1];
conv(P,Q);

%simbolismo con polinomios
syms x
poly2sym(P,x)

%crear un polinomio que pase por los puntos (x,y)
x=[1 2 3 5];
y= [1.06 1.12 1.34 1.78];
p = polifit(x,3y)

%contruir un polinomio de Lagranje ser�a un tanto como
poly([1 2])
%no entregar� un resultado, dado que en el polinomio de Lagranje
%Solo agregamos las soluciones de este
% (x-1)(x-2)=x^2 - 3x + 2

L(1,:) = poly([2.0 2.5])/((1.0 - 2.0)*(1.0 - 2.5)) 
L(2,:) = poly([1.0 2.5])/((2.0 - 1.0)*(2.0 - 2.5))
L(3,:) = poly([1.0 2.0])/((2.5 - 1.0)*(2.5 - 2.0))

%En los ejemplos anterios se logra ver como se crean los polinomios de base
%1 2 3 con respecto a sus soluciones y formar una matriz de polinios
%respectivos para representar cada una de sus L(n,sum(n))

%Luego para poder representar completamente el polinomio de Lagrange
%debemos realizar el siguiente c�digo
% P = y1*L(1,n) + y2*L(2,n) + y3*L(3,n)
P = 3*L(1,:) + 3*L(2,:) + 3.3*L(3,:);

%visualizar de forma simbolica

pretty(poly2sym(P))