%X é a matriz (imagem)
%h é a altura
%e é a largura
%dim é a dimensão da matriz 64x64

function [X,freq] = fftf2(X,dim)
    N = length(dim^2);
    K = 0:N-1;
    %T = N/Fs;
    %freq = K/T;
    X = fft2(X,h,e);
    %cutoff = ceil(N/2);
    %X = X(1:cutoff);
    
    figure();
    
    plot (freq(1:cutoff),abs(X));
    
    title('Espectro de frequencias de uma imagem');
    xlabel('Frequencia(Hz)');
    ylabel('Amplitude');
    