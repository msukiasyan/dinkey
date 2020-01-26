%% Base parameters
p.gamma         = 2;
p.eta           = .1;
p.nu            = 0.1;
p.psi           = 1.0;
p.sigma_theta   = 1.0;
p.sigma_eps     = 0.5;
p.Ng            = 50;
p.lb            = -5.0;
p.ub            = 5.0;

%% Construct grids
p               = setup(p);

%% Solve
k_star          = fsolve(@(x) resid(p, x), zeros(p.Ng, 1), optimset('Display', 'iter', 'TolFun', 1e-10));

%% Plot
plot(p.grid, k_star);