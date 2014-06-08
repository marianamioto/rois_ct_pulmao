function [a b]=bshm(x1,y1,x2,y2)

    dx = x2 - x1; dy = y2 - y1;

    aux1 = 2 * dy;
    aux2 = aux1 - 2 * dx;

    if x1>x2
     x = x2; y = y2; xf = x1; 
    else 
     x = x1; y = y1; xf = x2;
    end

    p = aux1 - dx;
    i = 1;
    while x < xf  
         x = x+1; 
         if p < 0 
            p = p + aux1;   
         else
            y = y+1;
            p = p + aux2;
         end
         a(i) = x
         b(i) = y
         i = i+1;
    end
end 