%essa é uma função que faz a tranformada de fourier de um sinal e o plota 
%no dominio da frequencia
%x é uma senóide qualquer
%N é o tamanho da matriz
%Fs e a frequencia de amostragem do sinal
%X é o modulo do sinal no dominio da frequencia
%freq é o vetor de frequencias

function [X,freq] = fftf(x,Fs)
    N = length(x);
    K = 0:N-1;
    T = N/Fs;
    freq = K/T;
    X = fftn(x)/N;
    cutoff = ceil(N/2);
    X = X(1:cutoff);
    
    figure();
    
    plot (freq(1:cutoff),abs(X));
    
    title('Espectro de frequencias de um sinal');
    xlabel('Frequencia(Hz)');
    ylabel('Amplitude');
    
    