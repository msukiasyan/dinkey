function r  = utility_prime(p, theta, k, K)
    r       = exp((1 - p.gamma) * (theta + p.eta .* K + (1 - p.eta) .* k) - k) .* (1 - p.eta) ...
                - p.psi * exp((1 + p.nu) * k - k);
end