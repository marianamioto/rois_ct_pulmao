%Desenha um círculo de raio r 
%centralizado no ponto (xc,yc): 
 
function[]=circle(r,xc,yc) 
x = 0; 
y = r; %recebe raio 
d = (1 - r); 
hold on; 
plot(xc,yc+r,'rs'); %ponto extremo superior 
plot(xc,yc-r,'rs'); %ponto extremo inferior 
plot(xc+r,yc,'rs'); %ponto extremo direita 
plot(xc-r,yc,'rs'); %ponto extremo esquerda 
hold on; 
while(y >= x) 
 if(d < 0) %seleciona E (pixel superior) 
 d = (d + 2*x + 3) 
 x = x + 1
 else %seleciona SE (pixel inferior) 
 d = (d + 2*(x - y) + 5); 
 x = x + 1; 
 y = y - 1; 
 end; 
 plot(x+xc,y+yc,'rs'); %segundo octante 
 plot(x+xc,yc-y,'rs'); %sétimo octante 
 plot(y+xc,x+yc,'rs'); %primeiro octante 
 plot(y+xc,yc-x,'rs'); %oitavo octante 
 plot(xc-x,yc+y,'rs'); %terceiro octante 
 plot(xc-x,yc-y,'rs'); %sexto octante 
 plot(xc-y,yc-x,'rs'); %quinto octante 
 plot(xc-y,x+yc,'rs'); %quarto octante 
end; 
axis equal; 
