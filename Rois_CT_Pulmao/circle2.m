function[]=circle2(r,xc,yc) 
r =1;
xc = 32;
yc = 32;
x = 0; 
y = r; %recebe raio 
d = (1 - r);
o = r;

while o <= 32
    i =1;
    while(y >= x) 
     if(d < 0) %seleciona E (pixel superior) 
     d = (d + 2*x + 3);
     x = x + 1;
     else %seleciona SE (pixel inferior) 
     d = (d + 2*(x - y) + 5); 
     x = x + 1; 
     y = y - 1;
     end; 

     %plot(x+xc,y+yc,'rs'); %segundo octante
     raio(o).x(i) = x+xc;
     raio(o).y(i) = y+yc;
     i = i + 1;
     %plot(x+xc,yc-y,'rs'); %sétimo octante
     raio(o).x(i) = x+xc;
     raio(o).y(i) = yc-y;
     i = i + 1;
     %plot(y+xc,x+yc,'rs'); %primeiro octante
     raio(o).x(i) = y+xc;
     raio(o).y(i) = x+yc;
     i = i + 1;
     %plot(y+xc,yc-x,'rs'); %oitavo octante
     raio(o).x(i) = y+xc;
     raio(o).y(i) = yc-x;
     i = i + 1;
     %plot(xc-x,yc+y,'rs'); %terceiro octante
     raio(o).x(i) = xc-x;
     raio(o).y(i) = yc+y;
     i = i + 1;
     %plot(xc-x,yc-y,'rs'); %sexto octante
     raio(o).x(i) = xc-x;
     raio(o).y(i) = yc-y;
     i = i + 1;
     %plot(xc-y,yc-x,'rs'); %quinto octante
     raio(o).x(i) = xc-y;
     raio(o).y(i) = yc-x;
     i = i + 1;
     %plot(xc-y,x+yc,'rs'); %quarto octante
     raio(o).x(i) = xc-y;
     raio(o).y(i) = x+yc;
     i = i + 1;
    end; 
    o = o+1;
    y = o;
end
axis equal; 

