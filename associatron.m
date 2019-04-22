% Associatron Example
% 
% Masahiro Furukawa
% m.furukawa@ist.osaka-u.ac.jp
% Apr 22, 2019

x1=[0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 ];
x2=[0 0 0 1 0 0 0 1 1 0 0 1 0 1 0 1 1 1 1 1 0 0 0 1 0 ];

% self correlation
M = x1'*x1 + x2'*x2;

% quantam function
fai(M);

% example of (b)
% -1 negative
%  0 undefined
%  1 positive 
y = [0 -1 -1 1 -1 0 -1 1 1 -1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 ];

% input-output function
z = fai(y*fai(M))


%%
function Y = fai(t)
    
Y = zeros(size(t,1),size(t,2));
    
    for i=1:size(t,1)
        for k=1:size(t,2)
        
            if (t(i,k)>0) 
                Y(i,k) = 1;
            elseif(t(i,k) == 0) 
                Y(i,k) = 0;
            else
                Y(i,k) = -1;
            end 
        end
    end
end