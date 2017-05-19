function K_ff = k_ff(xx, yy, hyp,i)

logsigma = hyp(1);
logthetat = hyp(2);
logthetax = hyp(3);
alpha = hyp(4);

t = xx(:,1);
x = xx(:,2);
s = yy(:,1);
y = yy(:,2);

if i == 0 || i == 1
    
    K_ff = exp(1).^(logsigma+(-2).*logthetat+(-4).*logthetax+(-1/2).*exp(1) ...
        .^((-1).*logthetat).*bsxfun(@minus,t,s').^2+(-1/2).*exp(1).^((-1).* ...
        logthetax).*bsxfun(@minus,x,y').^2).*(exp(1).^(4.*logthetax).*(exp(1) ...
        .^logthetat+(-1).*bsxfun(@minus,t,s').^2)+3.*exp(1).^(2.*(logthetat+ ...
        logthetax)).*alpha.^2+(-6).*exp(1).^(2.*logthetat+logthetax).*bsxfun(@minus,x,y').^2.*alpha.^2+...
        exp(1).^(2.*logthetat).*bsxfun(@minus,x,y').^4.*alpha.^2);
    
elseif i == 2
    
    K_ff = exp(1).^(logsigma+(-2).*logthetat+(-4).*logthetax+(-1/2).*exp(1) ...
        .^((-1).*logthetat).*bsxfun(@minus,t,s').^2+(-1/2).*exp(1).^((-1).* ...
        logthetax).*bsxfun(@minus,x,y').^2).*((1/2).*exp(1).^((-1).*logthetat+4.* ...
        logthetax).*((-2).*exp(1).^(2.*logthetat)+5.*exp(1).^logthetat.*...
        bsxfun(@minus,t,s').^2+(-1).*bsxfun(@minus,t,s').^4)+(3/2).*exp(1).^(logthetat+2.* ...
        logthetax).*bsxfun(@minus,t,s').^2.*alpha.^2+(-3).*exp(1).^(logthetat+ ...
        logthetax).*bsxfun(@minus,t,s').^2.*bsxfun(@minus,x,y').^2.*alpha.^2+(1/2).*exp(1) ...
        .^logthetat.*bsxfun(@minus,t,s').^2.*bsxfun(@minus,x,y').^4.*alpha.^2);
    
elseif i == 3
    
    K_ff = (1/2).*exp(1).^(logsigma+(-2).*logthetat+(-4).*logthetax+(-1/2).* ...
        exp(1).^((-1).*logthetat).*bsxfun(@minus,t,s').^2+(-1/2).*exp(1).^((-1).* ...
        logthetax).*bsxfun(@minus,x,y').^2).*(exp(1).^(3.*logthetax).*(exp(1) ...
        .^logthetat+(-1).*bsxfun(@minus,t,s').^2).*bsxfun(@minus,x,y').^2+(-12).*exp(1).^( ...
        2.*(logthetat+logthetax)).*alpha.^2+39.*exp(1).^(2.*logthetat+ ...
        logthetax).*bsxfun(@minus,x,y').^2.*alpha.^2+(-14).*exp(1).^(2.*logthetat).*...
        bsxfun(@minus,x,y').^4.*alpha.^2+exp(1).^(2.*logthetat+(-1).*logthetax).*...
        bsxfun(@minus,x,y').^6.*alpha.^2);
    
elseif i == 4
    
    K_ff = 2.*exp(1).^(logsigma+(-4).*logthetax+(-1/2).*exp(1).^((-1).* ...
        logthetat).*bsxfun(@minus,t,s').^2+(-1/2).*exp(1).^((-1).*logthetax).*...
        bsxfun(@minus,x,y').^2).*(3.*exp(1).^(2.*logthetax)+(-6).*exp(1).^logthetax.*...
        bsxfun(@minus,x,y').^2+bsxfun(@minus,x,y').^4).*alpha;
    
end

end

