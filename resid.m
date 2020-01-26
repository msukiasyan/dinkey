function res    = resid(p, kpol)
    K           = agg_action(p, kpol);
    res         = zeros(p.Ng, 1);
    
    for g = 1:p.Ng
        res(g)  = sum(p.pr_theta_x(:, g) .* utility_prime(p, p.grid(g), kpol(g), K));
    end
end