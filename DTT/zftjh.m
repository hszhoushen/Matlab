clc
imhist(x9)
title
clc
imhist(x9)
title('x9的直方图')
subplot(2,2,3)
imshow(B)
clc
imshow(x9)
title('原图像')
subplot(2,2,2)
imhist(x9)
title('x9的直方图')
subplot(2,2,3)
A=histeq(x9);
imshow(A)
figure,subplot(121),imshow(x9);subplot(122),imshow(a)
figure,subplot(121),imshow(x9);subplot(122),imshow(x9)
figure,subplot(121),imshow(A);subplot(122),imshow(x9)
A=histeq(x9);
imshow(x9)
imshow(A)
figure,subplot(121),imshow(A);subplot(122),imshow(x9)
help subplot
thresh = graythresh(x9);
I2 = im2bw(x9,thresh);       %对图像二值化
imshow(I2)