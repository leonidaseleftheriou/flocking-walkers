function Reflect(Bnds)
% this function reflects all actors off the  boundaries at 
% x=-Bnds, x=Bnds, y=-Bnds, y=Bnds

% function Reflect(Bnds)
%
%               this function reflects all actors off the boundaries
%               of the square -Bnds<=x<=Bnds, -Bnds<=y<=Bnds
% Bnds          specifies the square -Bnds<=x<=Bnds, -Bnds<=y<=Bnds (INPUT)

global N T t x y z p q r D v0 wpc

for n=1:N
	if x(t+1,n)>Bnds; x(t+1,n)=2*Bnds-x(t+1,n); p(t+1,n)=-p(t+1,n); end
	if x(t+1,n)<-Bnds; x(t+1,n)=-2*Bnds-x(t+1,n); p(t+1,n)=-p(t+1,n); end
	if y(t+1,n)>Bnds; y(t+1,n)=2*Bnds-y(t+1,n); q(t+1,n)=-q(t+1,n); end
	if y(t+1,n)<-Bnds; y(t+1,n)=-2*Bnds-y(t+1,n); q(t+1,n)=-q(t+1,n); end
    if z(t+1,n)>Bnds; z(t+1,n)=2*Bnds-z(t+1,n); r(t+1,n)=-r(t+1,n); end
	if z(t+1,n)<-Bnds; z(t+1,n)=-2*Bnds-z(t+1,n); r(t+1,n)=-r(t+1,n); end
end        
    
