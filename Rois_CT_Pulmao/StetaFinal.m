%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%obten��o da imagem
img = imread('002_1.jpg');

%magnitude da tranformada que foi aplicada a imagem
mag = abs((fftshift(fft2(img))));

%VARIAVEIS
%ponto inicial x e y
pix = 32;
piy = 32;

%guias para algoritmo de soma
guiax = 32;
guiay = 32;

%angulo inicial do algoritmo
ang = 5;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%for para o loop que armazena o conjunto de pontos de cada angulo
soma(1) = 0;
%for para o loop que armazena o conjunto de pontos de cada angulo
for n = 1:9
    %hipotenusa para angulo at� 45 graus 
    hip  = 32/(cosd(ang));

    %encontra os pontos para at� 45 graus
    x = 31 + cosd(ang)*hip;
    y = 31 - sind(ang)*hip;

    %tra�a a reta que vai do ponto inicial at� os pontos encontrados em x e y
    [x y] = bresenham(pix,piy,y,x);

    %coloca os pontos encontrados pelo algoritmo de bresenham na struct

        
     linha(n).x = x;
     linha(n).y = y;
     
     
     %soma(n) = 0;
     for m =1:length(linha(n).x)
         i = linha(n).x(m);
         j = linha(n).y(m);
         
         if i <= 0 
            continue;
         end
    
         if i == guiax && j == guiay
             soma(n+1) = soma(n) + mag(i,j);
         else
             while i <= guiax
                 soma(n+1) = soma(n) + mag(i,j);
                 i = i + 1;
             end
         end
         guiax = guiax + 1;
     end
     
     
     ang = ang + 5;
     guiax = 32;
     
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%encontra os pontos da reta entre 45 e 90 graus e calcula a somatorio 
px = 64;
mpx = 4;
guiay = 1;
for n = 10:20
    %hipotenusa para angulo at� 45 graus 
    %hip  = 32/(cosd(ang));

    %encontra os pontos para at� 45 graus
    x = px - mpx;
    if x == 0
        x=1;
    end
    y = 1;

    %tra�a a reta que vai do ponto inicial at� os pontos encontrados em x e y
    [x y] = bresenham(pix,piy,x,y);

    %coloca os pontos encontrados pelo algoritmo de bresenham na struct

     linha(n).x = x;
     linha(n).y = y;
     
     
     
     guiax = 32;
     for m =1:length(linha(n).x)
         j = linha(n).x(m);
         i = linha(n).y(m);
    
         if i == guiax && j == guiay
             soma(n+1) = soma(n) + mag(i,j);
         else
             while i <= guiax && i <= 64
                 soma(n+1) = soma(n) + mag(i,j);
                 i = i + 1;
             end
         guiax = guiax + 1;
         end
     end
     
     %TODO: acrescentar ao valor da soma o retangulo que 
     
     %acrencenta o angulo para uma proxima interacao
     ang = ang + 5;
     
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%encontra os pontos da reta entre 90 e 135 graus e calcula a somatorio 
px = 32;
if x == 0
        x=1;
    end
mpx = 4;
guiay = 1;
for n = 21:31
    %hipotenusa para angulo at� 45 graus 
    %hip  = 32/(cosd(ang));

    %encontra os pontos para at� 45 graus
    x = px - mpx;
    y = 1;

    %tra�a a reta que vai do ponto inicial at� os pontos encontrados em x e y
    [x y] = bresenham(pix,piy,x,y);

    %coloca os pontos encontrados pelo algoritmo de bresenham na struct

     linha(n).x = x;
     linha(n).y = y;
     
     
     
     guiax = 32;
     for m =1:length(linha(n).x)
         j = linha(n).x(m);
         i = linha(n).y(m);
    
         if i == guiax && j == guiay
             soma(n+1) = soma(n) + mag(i,j);
         else
             while i <= guiax && i <= 64
                 soma(n+1) = soma(n) + mag(i,j);
                 i = i + 1;
             end
         guiax = guiax - 1;
         end
     end
     
     %TODO: acrescentar ao valor da soma o retangulo que 
     
     %acrencenta o angulo para uma proxima interacao
     ang = ang + 5;
     
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%encontra os pontos da reta entre 135 e 180 graus e calcula a somatorio 
py = 1;
mpx = 4;
for n = 32:42
    %hipotenusa para angulo at� 45 graus 
    %hip  = 32/(cosd(ang));

    %encontra os pontos para at� 45 graus
    x = 1;
    y = py + 1;

    %tra�a a reta que vai do ponto inicial at� os pontos encontrados em x e y
    [x y] = bresenham(pix,piy,x,y);

    %coloca os pontos encontrados pelo algoritmo de bresenham na struct

     linha(n).x = x;
     linha(n).y = y;
     
     
     
     guiax = 1;
     for m =1:length(linha(n).x)
         j = linha(n).x(m);
         i = linha(n).y(m);
    
         if i == guiax && j == guiay
             soma(n+1) = soma(n) + mag(i,j);
         else
             while i <= guiax && i <= 64
                 soma(n+1) = soma(n) + mag(i,j);
                 i = i + 1;
             end
         guiax = guiax + 1;
         end
     end
     
     %TODO: acrescentar ao valor da soma o retangulo que 
     
     %acrencenta o angulo para uma proxima interacao
     ang = ang + 5;
     
end

