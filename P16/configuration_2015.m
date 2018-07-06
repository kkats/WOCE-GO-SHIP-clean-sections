% P16, 2015
soffset_handle = @salt_offset;
vinterp_handle = @vinterp;
hinterp_handle = @hinterp;
MAX_SEPARATION = 2.0;

function so = salt_offset(k)
%
% Given station number, returns salinity offset
%
if k <= 92
    so = 1.0e-3 * 0.4; % P156 (320620140320)
elseif k <= 204
    so = 1.0e-3 * 0.0; % not found (33RO20150410)
elseif k <= 306
    so = 1.0e-3 * (-0.7); % P157 (33RO20150525, station 113-196)
else
    so = 1.0e-3 * 0.1; % P155 (33RO20150525, station 197-207)
end
end
