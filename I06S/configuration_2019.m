% I06S, 2019
vinterp_handle = @vinterp_gauss;
hinterp_handle = @hinterp_bylat;
MAX_SEPARATION = 2.0;

salt_offset([1:55]) = 1.0e-3 * (-0.5); %  P162 (I06S, 325020190403)
