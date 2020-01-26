function r  = utility(p, theta, k, K)
    r       = exp((1 - p.gamma) * (theta + p.eta .* K + (1 - p.eta) .* k)) / (1 - p.gamma) ...
                - p.psi / (1 + p.nu) * exp((1 + p.nu) * k);
end