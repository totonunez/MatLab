function L = lagran(X,Y)
 for k=1:n+1 % Calculate each of n+1 Lagrange coefficient
     V=1; % Accumulate computations in V temporarily
     for j=1:n+1
         % Multiply by (x - X(j))/(X(k) - X(j))
         if k~=j % Be sure to skip the k'th one
             V=conv(V,poly(X(j)))/(X(k)-X(j));
         end
     end
     L(k,:)=V; % Store Lagrange coefficient in kth row of L
 end
end