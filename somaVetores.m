function [valorM] = somaVetores(veio,px,py,mag,inicio)
%ANG SERÁ A VARIAVEL QUE VAI MOSTRAR EM QUAL DAS SOMAS QUE SE ENCONTRA PARA
%CADA ANGULO
%os vetores que vem, vem a partir da posição que precisão ser somadas, e
%não somam de novo o que já foi somado
%o vetor que vem, só vai somar o que ainda nao foi somado
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
