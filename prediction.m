function [pred_error] = prediction(im)

% predictor with a bilinear kernel

Hpred = [ 0,   0.25,    0;
          0.25,  -1, 0.25;
          0,   0.25,    0 ];
   
pred_error = imfilter(double(im),double(Hpred),'replicate');

return