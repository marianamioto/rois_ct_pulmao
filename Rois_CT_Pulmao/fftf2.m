%X � a matriz (imagem)
%h � a altura
%e � a largura
%dim � a dimens�o da matriz 64x64

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
    