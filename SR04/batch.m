% variables
DIR = 'SR04/';
BDIR = '../CTD/SR04/';
fname = 'sr04';
years = {'1989', '1990', '1992', '1996', '1998', '2010'};
ll_grid = [303.4:0.1:348.7];
pr_grid = [0:10:6500];
depth_files = {'', '', '', 'SR04/sr04_1996.depth', '', ''};
%
tic;
outdir = ['../output/reported/' DIR];
if ~exist(outdir)
    if system(['mkdir ' outdir]);
        error('mkdir failed');
    end
end
outdir = ['../output/gridded/' DIR];
if ~exist(outdir)
    if system(['mkdir ' outdir]);
        error('mkdir failed');
    end
end
for n = 1:length(years)
    com = ['[s, m] = copyfile(''' DIR 'configuration_' years{n} '.m'', ''configuration.m'');'];
    eval(com);
    if s ~= 1, error(['copyfile ' num2str(n) ':', m]); end
    if isempty(depth_files{n})
        com = ['D_reported(' num2str(n) ') = reported_data(''' DIR fname '_' years{n} '.list'',''' BDIR fname '_' years{n} '.mat'');'];
    else
        com = ['D_reported(' num2str(n) ') = reported_data(''' DIR fname '_' years{n} '.list'',''' BDIR fname '_' years{n} '.mat'', ''' depth_files{n} ''');'];
    end
    eval(com);
end
com = ['save ''../output/reported/' DIR fname '.mat'' D_reported'];
eval(com);
%
for n = 1:length(years)
    com = ['reported_WHPX(D_reported(' num2str(n) '), ''../output/reported/work/' fname '_' years{n} ''');' ];
    eval(com);
end
%
for n = 1:length(years)
    com = ['[s, m] = copyfile(''' DIR 'configuration_' years{n} '.m'', ''configuration.m'');'];
    eval(com);
    if s ~= 1, error(['copyfile ' num2str(n) ':', m]); end
    com = ['D_pr(' num2str(n) ') = grid_data_pressure(D_reported(' num2str(n) '), ll_grid, pr_grid);'];
    eval(com);
end
com = ['save ''../output/gridded/' DIR fname '.mat'' D_pr ll_grid pr_grid'];
eval (com);
%
for n = 1:length(years)
    com = ['gridded_xyz(D_pr(' num2str(n) '), ''../output/gridded/' DIR fname '_' years{n} '.xyz'', ll_grid, pr_grid);'];
    eval(com);
end
%
com = ['gridded_bin(D_pr, ''../output/gridded/' DIR fname '.bin'', ll_grid, pr_grid);'];
eval(com);
toc

% NetCDF
%com = ['gridded_nc(D_pr, ''../output/gridded/' DIR fname '.nc'', ll_grid, pr_grid);'];
%eval(com);