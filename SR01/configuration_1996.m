% SR01 1996
vinterp_handle = @vinterp_gauss;
hinterp_handle = @hinterp_bylat;
MAX_SEPARATION = 2.0;

salt_offset([1:29]) = 1.0e-3 * 0.0; % unknown (74JC16_1)
