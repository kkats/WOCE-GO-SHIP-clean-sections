% S04P, 2011
vinterp_handle = @vinterp_gauss;
hinterp_handle = @hinterp_bylon;
MAX_SEPARATION = 2.0;

salt_offset([1:139]) = 1.0e-3 * 0.0; % P152 (320620110219)
