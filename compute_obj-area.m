clc
clear
close all

% Evaluation Dataset metric
% For binary image dataset, this .m file compute the mean ratio of the foreground map into entire map on dataset. 


dataset_path = ['./dataset/']; % put your dataset_path into this path, then run this .m file.
imgFiles = dir(dataset_path); 
imgNUM = length(imgFiles)-2;

tic;
total_ratio = 0;

for i = 1:imgNUM

    name =  imgFiles(i+2).name;
    Pic = imread([dataset_path name]);
    Level = 0.1;
    Pic = im2bw(Pic, Level);    % binary image
    A = Pic;
    S = numel(A);               % total number of pixel in entire image
    s = sum(sum(A));            % total number of pixel in the foreground 
    ratio = s/S;
    total_ratio = total_ratio + ratio;
    fprintf('The %d image ratio is: %d/%d\n',i,ratio,imgNUM);
    
end

fprintf('The mean ratio is: %d\n',rem(total_ratio/imgNUM,1));