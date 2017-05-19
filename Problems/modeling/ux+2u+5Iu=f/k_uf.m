function K_uf = k_uf(x, y, hyp,i)

logsigma = hyp(1);
logtheta = hyp(2);
alpha = hyp(3);
beta = hyp(4);

if i == 0 || i == 1
    kk = @(x,y) exp(1).^(logsigma+(-1).*logtheta+(-1/2).*exp(1).^((-1).*logtheta) ...
        .*(x+(-1).*y).^2).*(x+(-1).*y+exp(1).^logtheta.*alpha)+exp(1).^( ...
        logsigma+(1/2).*logtheta).*((1/2).*pi).^(1/2).*beta.*(erf(2.^(-1/2).* ...
        exp(1).^((-1/2).*logtheta).*x)+erf(2.^(-1/2).*exp(1).^((-1/2).* ...
        logtheta).*((-1).*x+y)));
    
    K_uf = bsxfun(kk,x,y');
    
elseif i == 2
    kk = @(x,y) (1/4).*exp(1).^(logsigma+(-1/2).*exp(1).^((-1).*logtheta).*x.^2).* ...
        ((-2).*x.*beta+2.*exp(1).^((-2).*logtheta+(-1/2).*exp(1).^((-1).*...
        logtheta).*y.*((-2).*x+y)).*(x+(-1).*y).*((x+(-1).*y).^2+exp(1)...
        .^logtheta.*((-2)+x.*alpha+(-1).*y.*alpha+exp(1).^logtheta.*beta))+exp(1).^(( ...
        1/2).*(logtheta+exp(1).^((-1).*logtheta).*x.^2)).*(2.*pi).^(1/2).* ...
        beta.*(erf(2.^(-1/2).*exp(1).^((-1/2).*logtheta).*x)+(-1).*erf(2.^( ...
        -1/2).*exp(1).^((-1/2).*logtheta).*(x+(-1).*y))));
    
    K_uf = bsxfun(kk,x,y');
    
elseif i == 3
    kk = @(x,y) exp(1).^(logsigma+(-1/2).*exp(1).^((-1).*logtheta).*(x+(-1).*y) ...
        .^2);
    K_uf = bsxfun(kk,x,y');
    
elseif i == 4
    kk = @(x,y) exp(1).^(logsigma+(1/2).*logtheta).*((1/2).*pi).^(1/2).*(erf(2.^( ...
        -1/2).*exp(1).^((-1/2).*logtheta).*x)+erf(2.^(-1/2).*exp(1).^(( ...
        -1/2).*logtheta).*((-1).*x+y)));
    
    K_uf = bsxfun(kk,x,y');
end

