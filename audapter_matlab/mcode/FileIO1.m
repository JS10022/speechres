% A = importdata('Caterpillar.txt');

% fid = fopen('Caterpillar.m');

% M = fscanf(fid,'%s\n',10);

% M = fgetl(fid);


% A = Fscanf('Caterpillar.txt');

% A

% M

% caterpillar = cell(1,16);

% caterpillar{1}	= 'Do you like amusement parks?  ';
% caterpillar{2}	= 'Well, I sure do.  ';

% words	= cell(1,0);

% caterpillar

% fid

nMainPanels				= 1;
leftMargin				= 0.075;
panelSpacing			= 0.025;

%{
 						  (1 - 2 * 0.075	  - (3			 - 1) * 0.025		) / 3
	nMainPanels = 1 -> panelWidth = 0.996
	nMainPanels = 3 -> panelWidth = 0.267
%}

panelWidth				= (1 - 2 * leftMargin - (nMainPanels - 1) * panelSpacing) / nMainPanels;
panelHeight				= 0.525;

hsp						= nan(1, nMainPanels);

for i1 = 1 : nMainPanels
% 	hsp(i1)	= subplot('Position', [0.05, 0.45, 0.9, 0.5]);
    hsp(i1)	= leftMargin + (i1 - 1) * (panelWidth + panelSpacing);	% , 0.375, panelWidth, panelHeight]);
%     set(gca, 'XTick', [], 'YTick', []);
%     set(gca, 'XColor', 'w', 'YColor', 'w');
end

% panelWidth
hsp
