clc;
clear;
x=input('Enter Elements [elt1 elt2 elt3......]: ')
%x=[2,-1,1,-2];
N=input('Input N point DFT (N>=L): ');
L=length(x);
if(N<L)
    error('N must be greater than or equal to length of x')
end
x=[x,zeros(1,N-L)];
W=twiddle_factor(N);

%DFT
X=DFT(x,W)
Magnitude=abs(X)
Phase=angle(X)

%IDFT 
x=(1/N)*DFT(X.',conj(W))
