clc;
clear;
%x1=[1,2,2,1];
x1=input('Enter Elements [elt1 elt2 elt3......]: ')
%x2=[1,2,3];
x2=input('Enter Elements [elt1 elt2 elt3......]: ')
l1=length(x1);
l2=length(x2);
[x1,x2]=check_length(x1,x2,l1,l2);
N=length(x1);
%display(x1)
%display(x2)
W=twiddle_factor(N)
X1=DFT(x1,W)
X2=DFT(x2,W)
X3=X1.*X2
x3=(1/N)*DFT(X3.',conj(W))