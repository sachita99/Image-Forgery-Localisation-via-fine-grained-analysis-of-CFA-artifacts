function [window]=gaussian_window()

% gaussian window

N_window=7;     % window length
sigma=1;        

[x, y] = meshgrid(-(ceil(sigma*2)):4*sigma/(N_window-1):ceil(sigma*2));

window = (1/(2*pi*sigma^2)).*exp(-0.5.*(x.^2+y.^2)./sigma^2);

return


