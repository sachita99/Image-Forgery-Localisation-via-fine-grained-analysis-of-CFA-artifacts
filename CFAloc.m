function [map, stat] = CFAloc(image, Bayer, Nb, Ns)
% [map, stat] = CFAloc(image,Bayer, Nb, Ns)
% image:    image 
% Bayer:    2x2 Bayer pattern of green channel. It is assumed to be known
% Nb:       feature dimension
% Ns:       number of blocks to cumulate
%
% map:      log-likelihood map
% stat:     proposed feature
if (nargin ~= 4)
    error('Insert image, 2x2 CFA pattern on grenn channel, Nb and Ns');
end

% parameters
Nm = 5; % dimension of map filtering
% green channel extraction
im = image(:,:,2);
[h, w] = size(im);
dim = [h, w];
% prediction error
pred_error = prediction(im);
% local variance of acquired and interpolated pixels
var_map = getVarianceMap(pred_error, Bayer, dim);
% proposed feature
stat = getFeature(var_map, Bayer, Nb);
% GMM parameters estimation
[mu, sigma] = MoGEstimationZM(stat);
% likelihood map
loglikelihood_map = loglikelihood(stat, mu, sigma);
% filtered and cumulated log-likelihood map
map = getMap(loglikelihood_map, Ns, Nm);
return
