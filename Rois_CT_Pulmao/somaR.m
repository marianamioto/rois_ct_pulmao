p =1;
somaR(p) = 0;
while p < 32
    for q = 1:8
        i = raio(p).x(q)
        j = raio(p).y(q)
        somaR(p+1) = somaR(p) + mag(j,i);
    end
    p = p+1
end