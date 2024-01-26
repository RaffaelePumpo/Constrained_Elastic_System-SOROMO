function J = getJacobianNumericShooting(chi, Const, Config)




n = length(chi);


delta = Config.delta;


J = zeros(n, n);

R = ShootingBVP(chi, Const, Config);

for it=1:n
      
    %   Get current set of variations
    delta_chi = chi;
    delta_chi(it) = chi(it) + delta;


    %   Compute variation in residual
    delta_R = ShootingBVP(delta_chi, Const, Config);


    %   Compose Jacobian column
    J(:, it) = (delta_R - R)/delta;
end




end