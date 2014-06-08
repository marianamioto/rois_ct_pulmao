




%mag = [2 3 5 2 1 4;3 3 4 1 0 3;2 5 3 2 1 2;1 3 2 0 2 1;0 6 4 2 1 0;0 1 2 3 4 5];

img = imread('001_1.jpg');

%magnitude da tranformada
mag = abs((fftshift(fft2(img))));




meiox = 3;
meioy = 3;

raio = 1;
S(raio) = 0;

passo = 0;

%lista de pontos 
i = 1;
px(i) = 0;
py(i) = 0;
k = 1;
m = 1;

a = 1;


j=1;
Soma(j) = 0;

SomaF = 0;

inicio = 1;

for angulo = 5:5:45
    
   hip = 3/cosd(angulo); %maior tamanho que a hipotenusa pode ter, sendo que 
   %percorrerei essa hipotenusa como se ela fosse o raio que eu tenho para aquele angulo
   for raio = 1:hip 
       x = meiox + (round(cosd(angulo)*raio));
       y = meioy - (round(sind(angulo)*raio));
       
       %asseguro que se arredondou para 0, o numero inserido é 1
       if x == 0
           x = 1;
       end
       if y == 0
           y = 1;
       end
       
       %se ponstos ainda nao tem pontos n = -1 e retorna para inserir o primeiro
       %ponto
       if i < 2
         px(i) = x;
         py(i) = y;
         i = i+1;   
       else
         %if com funcao que verifica se os pontos já fazem parte da lista de pontos
         %no verifica: se é diferente de 0 ele insere
         i = length(px);
         if(verificaLista(x,y,i,px,py) ~= 0) 
           px(i+1) = x;
           py(i+1) = y;
           i = i+1;   
         end 
       end
   end
   
   %x1 ponto recebido de px
   %x2 ponto recebido de py
   %ja tenho uma lista de pontos, vou ter que guardar cada soma de pontos
   %que eu fizer, em cada angulação, ou seja.. em cada laço (de 5 em 5
   %graus) eu somo os pontos que eu tenho.. 
   %Soma(1) = somaVetores(valor que eu tenho somado,vetor px,vetor py,matriz mag, j = qual intercao esta do laço de 5 em 5 graus )
   %O retorno vem somado os pontos encontrados naquela interacao
   
   Soma(j) = somaVetores(SomaF, px,py,mag,inicio);
   inicio = (length(px)+1);
   SomaF = Soma(j)
   j = j+1;
    
end

SomaF = SomaF + mag(meiox,meioy)
