clc
clear
close all


% Evaluation Dataset metric
% For RGB image dataset, this contrat_value.m file compute the color contrast.

dataset_path = ['./DUT/']; % put your dataset_path into this path, then run this .m file.
imgFiles = dir(dataset_path); 
imgNUM = length(imgFiles)-2;

tic;
total_contrast = 0;

for i = 1:imgNUM

    name =  imgFiles(i+2).name;
    Pic = imread([dataset_path name]);
    
    % set your need method
    cg = contrast_near4(Pic);       % 4-near neighbor
    %cg = contrast_near8(Pic);    % 8-near neighbor
    
    total_contrast = total_contrast + cg;
    fprintf('The %d RGB contrast is: %d/%d\n',i,cg,imgNUM);

end

fprintf('The mean contrast is: %d\n',rem(total_contrast/1465,1));
