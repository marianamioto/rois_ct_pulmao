function [valorM] = somaVetores(veio,px,py,mag,inicio)
%ANG SER� A VARIAVEL QUE VAI MOSTRAR EM QUAL DAS SOMAS QUE SE ENCONTRA PARA
%CADA ANGULO
%os vetores que vem, vem a partir da posi��o que precis�o ser somadas, e
%n�o somam de novo o que j� foi somado
%o vetor que vem, s� vai somar o que ainda nao foi somado
valorM = veio;

for ang = inicio:length(py)
    a = px(ang);
    b = py(ang);
    %if b == 0
    %    b=1;
    %end
    valorM = valorM + mag(b,a);
end

return
