img = imread('001_1.jpg');
fimg = fft2(img,64,64);
 
%magnitude da tranformada
 mag = abs((fftshift(fft2(img))));
 
for i = 1:64
  for j = 1:64
         R(i,j) = real(fimg(i,j));
         I(i,j) = imag(fimg(i,j));
     end
 end
 
 for i = 1:64
     for j = 1:64
         mag(i,j) = ((R(i,j)^2) + (I(i,j)^2))^0.5;
         fase(i,j) = atand(I(i,j)/R(i,j));
     end
 end
 
 plot(mag,'.')
 plot(fase,'.')
 
 k = 1;
 for i = 1:64
        for j = 1:64
            vmag(k) = mag(i,j);
            vfase(k) = fase(i,j);
            vfimag(k) = fimg(i,j);
            k = k + 1;
        end
 end
 
 for i =1:4096
     if vfase(i) < 0
         vfase(i) = 360 + vfase(i);
     end
 end
 
for i = 1:64
        for j = 1:64
            vfimag(k) = fimg(i,j);
            k = k + 1;
        end
 end
         