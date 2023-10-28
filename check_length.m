function [x1,x2]=check_length(x1,x2,l1,l2)
    if l1==l2
        return
    elseif l1>l2
        x2=[x2,zeros(1,l1-l2)];
    else 
        x1=[x1,zeros(1,l2-l1)];
    end
end