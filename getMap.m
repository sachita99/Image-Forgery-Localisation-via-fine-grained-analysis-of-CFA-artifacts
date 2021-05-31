function [map] = getMap(L, Ns, Nm)

% Cumulated and median filtered log-likelihood map

% cumulate blocks
func = @(x) sum(x(:));

log_L_cum = blkproc(L,[Ns Ns],func);


% median filtered log-likelihood
map = medfilt2(log_L_cum,[Nm Nm],'symmetric');

return