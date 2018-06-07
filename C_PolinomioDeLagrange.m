clc;
clear;
D = 60; %METROS
rho = 1000; %KG/M^3
g = 9.8;%METROS/SEGUNDO^2 
z0=[0 10 20 30 40 50 60];
w0=[122 130 135 160 175 190 200];
n=length(z0);

for k=1:n % Calculate each of n+1 Lagrange coefficient
     V=1; % Accumulate computations in V temporarily
     for j=1:n
         % Multiply by (x - X(j))/(X(k) - X(j))
         if k~=j % Be sure to skip the k'th one
             V=conv(V,poly(z0(j)))/(z0(k)-z0(j));
         end
     end
     L(k,:)=V; % Store Lagrange coefficient in kth row of L
end