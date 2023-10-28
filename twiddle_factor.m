function W=twiddle_factor(N)
    for k=0:N-1
        for n=0:N-1
            w=exp(-2i*pi*n*k/N);
            W(k+1,n+1)=w;
        end
    end
end