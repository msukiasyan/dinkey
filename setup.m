function pnew   = setup(p)
    p.grid          = linspace(p.lb, p.ub, p.Ng);
    p.pr_theta      = normpdf(p.grid, 0, p.sigma_theta);
    p.pr_theta      = p.pr_theta / sum(p.pr_theta);
    
    % pi(x|theta); theta is first index, x is second
    p.pr_x_theta    = zeros(p.Ng, p.Ng);
    for g = 1:p.Ng
        p.pr_x_theta(g, :)  = normpdf(p.grid, p.grid(g), p.sigma_eps);
        p.pr_x_theta(g, :)  = p.pr_x_theta(g, :) / sum(p.pr_x_theta(g, :));
    end
    
    % pi(theta|x); theta is first index, x is second
    p.pr_theta_x    = zeros(p.Ng, p.Ng);
    for g = 1:p.Ng
        p.pr_theta_x(:, g)  = p.pr_theta .* p.pr_x_theta(:, g) / sum(p.pr_theta .* p.pr_x_theta(:, g));
    end
    
    pnew            = p;
end