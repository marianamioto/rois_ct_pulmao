function somasR = somaR(raio,mag)

    p =1;
    somasR(p) = 0;
    octantes = 8;
    while p < 32
        for q = 1:octantes
            i = raio(p).x(q);
            j = raio(p).y(q);
            somasR(p+1) = somasR(p) + mag(j,i);
        end
        p = p+1;
    end
    
end
