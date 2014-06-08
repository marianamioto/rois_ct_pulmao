
meiox = 3;
meioy = 3;

raio = 1;
S(raio) = 0;

%lista de pontos 
i = 1;
px(i) = 0;
py(i) = 0;
k = 1;
m = 1;
for angulo = 5:5:45
    
   hip = 3/cosd(angulo) %maior tamanho que a hipotenusa pode ter, sendo que 
   %percorrerei essa hipotenusa como se ela fosse o raio que eu tenho para aquele angulo
   for raio = 1:hip 
       x = meiox + (round(cosd(angulo)*raio))
       y = meioy - (round(sind(angulo)*raio))
       
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
   
   %for m =1:length(py)
   %    px(m)
   %    py(m)
   %end
    
end
