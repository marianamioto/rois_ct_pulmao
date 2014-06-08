function [n] = verificaLista(x,y,i,px,py)
n = 0;
for k=1:i
    if (px(k) == x && py(k)== y)
        n = 0;
        break;
    else
        n = n + 1;
    end
end
return 
