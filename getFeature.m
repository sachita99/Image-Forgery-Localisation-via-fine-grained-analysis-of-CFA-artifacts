function [statistics] = getFeature(map,Bayer,Nb)

% Proposed feature to localize CFA artifacts

pattern = kron(ones(Nb/2,Nb/2),Bayer);

func = @(sigma) (prod(sigma(logical(pattern)))/(prod(sigma(not(logical(pattern))))));

statistics = blkproc(map,[Nb Nb],func);

return

