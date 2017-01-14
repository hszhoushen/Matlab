function [ output_args ] = absd( input_args )

% http://cn.mathworks.com/help/images/ref/ssim.html#zmw57dd0e119283
%SSIM Summary of this function goes here
%   Detailed explanation goes here

% church, lawn1, mansion, road1, raindeer
ref = imread('./color-line/raindeer_S10_cl.png');  
A = imread('./color-line/raindeer_S10_true.png');



subplot(1,2,1); imshow(ref); title('haze-free');
subplot(1,2,2); imshow(A);   title('transmission image');

[ssimval, ssimmap] = ssim(A,ref);
fprintf('The SSIM value is %0.4f.\n',ssimval);
X = size(ssimmap)
figure, imshow(ssimmap,[]);
title(sprintf('ssim Index Map - Mean ssim Value is %0.4f',ssimval));

end

