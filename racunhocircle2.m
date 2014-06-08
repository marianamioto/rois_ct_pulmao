plot(xc,yc+r,'rs'); %ponto extremo superior 
raio(o).x(1) = xc;
raio(o).y(1) = yc+r;
plot(xc,yc-r,'rs'); %ponto extremo inferior
raio(o).x(2) = xc;
raio(o).y(2) = yc-r;
plot(xc+r,yc,'rs'); %ponto extremo direita 
raio(o).x(3) = xc+r;
raio(o).y(3) = yc;
plot(xc-r,yc,'rs'); %ponto extremo esquerda 
raio(o).x(4) = xc-r;
raio(o).y(4) = yc;
hold on; 
i = 5;