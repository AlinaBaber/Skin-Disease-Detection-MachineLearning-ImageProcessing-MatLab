function ImagePIAfeatures(imagefilepath)
A = imread(imagefilepath);
%mask = false(size(I));
%mask(25:end-25,25:end-25) = true;
[BW,maskedRGBImage] = createMask(A);
BW_groundTruth = imread(imagefilepath);
BW_groundTruth = rgb2gray(A);
Image_Features(imagefilepath,imagefilepath)
figure,imhist(BW_groundTruth)