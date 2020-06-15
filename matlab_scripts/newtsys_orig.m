function[x] = newtsys(N)
%
% Methode de Newton : Etant donne x^n, trouver x^{n+1} 
% tel que DF(x^n)(x^n - x^{n+1}) = F(x^n)
% En pratique on construit A=DF(x^n), b=F(x^n)
% on resout Ay=b (decomposition LL^T de A) et on pose x^{n+1}=x^n-y
%
% parametres
%
%  N        : number of unknowns in the non-linear system
%  a        : N-vector, diagonal of A, then diagonal of L such that A = LL ^ T
%  c        : (N-1) -vector, sub-diagonal of A, then sub-diagonal of L
%  b        : N-vector, second member of Ay = b, then solution of Ay = b
%  x        : N-vector, contains x ^ n then x ^ {n + 1}

for i=1:N
    x(i) = 1;
end
stop=1;
iter=0;
while stop>1e-10
    iter=iter+1;
    for i=1:N
	    a(i) = 2+exp(x(i));
    end
    for i=1:N-1
        c(i) = ???;
    end
    b(1) = ???;
    for i=2:N-1
	    b(i) = 2*x(i)-x(i-1)-x(i+1)+???;
    end
    b(N) = ???;
    
    % Decomposition de Cholesky de la matrice A
    
    a(1) = ???;
    for i=1:N-1
        c(i) = c(i)/???;
        a(i+1) = sqrt(a(i+1)-???);
    end
    
    % Resolution du systeme lineaire Ly = b, puis L^T x = y
    
    b(1)=b(1)/???;
    for i=1:N-1
	    b(i+1) = (b(i+1)-c(i)*???)/a(i+1);
    end
    
    % resolution du systeme lineaire L^T x = y
    
    b(N)=b(N)/???;
    for i=N-1:-1:1
      b(i) = (b(i)-c(i)*???)/a(i);
    end
    
    %x^n+1 = x^n - y
    
    for i=1:N
	    x(i) = x(i) - ???;
    end
        
    % calcul de ||b||/||x||

    stop=norm(b)/norm(x);
    fprintf('iter=%i, stop = %e \n',iter,stop)
end
end
