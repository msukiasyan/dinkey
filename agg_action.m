function r  = agg_action(p, kpol)
    r       = (1 - p.eta) * log(exp(p.pr_x_theta * kpol / (1 - p.eta)));
end