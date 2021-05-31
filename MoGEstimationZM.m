function [mu,sigma,mix_perc] = MoGEstimationZM (statistics)

% Expectation Maximization Algorithm with Zero-Mean forced first component 

% E/M algorithm parameters inizialization

tol = 1e-3;
max_iter = 500;

% NaN and Inf management

statistics(isnan(statistics)) = 1;
data = log(statistics(:)); 
data = data(not(isinf(data)|isnan(data)));                     

% E/M algorithm

[alpha, v1, mu2, v2] = EMGaussianZM(data, tol , max_iter); 

% Estimated model parameters
    
mu= [mu2 ; 0];   

sigma = sqrt([v2; v1]);

mix_perc = [1-alpha;alpha];

return

