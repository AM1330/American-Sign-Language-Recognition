function d=MahalanobisDistance(A, B, myvariance)
% Return mahalanobis distance of two data matrices 
% A and B (row = object, column = feature)
% @author: Kardi Teknomo
% http://people.revoledu.com/kardi/index.html
[n1, k1]=size(A);
[n2, k2]=size(B);
n=n1+n2;
if(k1~=k2)
    disp('number of columns of A and B must be the same')
else
%     xDiff=mean(A)-mean(B);       % mean difference row vector
%     cA=cov(A);
%     cB=cov(B);
%     pC=n1/n*cA+n2/n*cB;          % pooled covariance matrix
%     d=sqrt(xDiff*pinv(pC)*xDiff'); % mahalanobis distance 
%     %xrhsimopoiw pinv gia na vrw pseudoinverse ka8ws exw mhdenika stoixeia
d=0;


 
for i=1:k1
    d= d + (((A(i) - B(i))^2 )/ myvariance(i) );
end

d= sqrt(d);
end