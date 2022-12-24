function [similarity,meandice,stddice]=diceimagesegmentation(imagefilepath)
A = imread(imagefilepath);
%mask = false(size(I));
%mask(25:end-25,25:end-25) = true;
[BW,maskedRGBImage] = createMask(A);
BW_groundTruth = imread(imagefilepath);
%common = (BW & BW_groundTruth);
a = sum(BW (:));
b = sum(maskedRGBImage(:));
Dice = a*2/b;
similarity =  Dice;
figure
imshowpair(BW, maskedRGBImage)
title(['Dice Index = ' num2str(similarity)])
meandice=mean(similarity)
stddice=std(similarity)
Image_Features(imagefilepath,imagefilepath)