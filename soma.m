function result = soma(x,y,ultima_soma,mag)

if ultima_soma > 0
    result = -1 * ultima_soma;
else
    result = ultima_soma;
end

for m =1:length(x)
    i = x(m);
    j = y(m);
                 
    result = result + mag(i,j);
end