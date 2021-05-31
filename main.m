clc;
clear all;
close all;

% dimensione of statistics
Nb = [2, 8];
% number of cumulated bloks
Ns = 1;
% Pattern of CFA on green channel
bayer = [0, 1; 1, 0];

im_true = imread('garden.jpg');


im = imread('garden-tampered.jpg');

 for j = 1:2

    [map, stat] = CFAloc(im, bayer, Nb(j),Ns);

    [h w] = size(map);

    %    NaN and Inf management

    stat(isnan(stat)) = 1;
    data = log(stat(:)); 
    data = data(not(isinf(data)|isnan(data)));
    % square root rule for bins
    n_bins = round(sqrt(length(data)));

    % plot result
    figure
    subplot(2,2,1), imshow(im_true), title('Not tampered image');
    subplot(2,2,2), imshow(im), title('Manipulated image');
    subplot(2,2,3), imagesc(map), colormap('gray'),axis equal, axis([1 w 1 h]), title(['Probability map (Nb = ',num2str(Nb(j)),')']);
    subplot(2,2,4), hist(data, n_bins), title('Histogram of the proposed feature');

    display('Press any key to continue...')
    pause

 end