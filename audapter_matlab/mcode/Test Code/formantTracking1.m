

addpath c:/speechres/commonmcode
cds('audapter_matlab');

OST_MULT = 500;
exampleDataFN = '../example_data/trial-1-2.mat';
load(exampleDataFN);
assert(exist('data', 'var') == 1);
pertMode = 'formant';
p = data.params;

% fs			= data.params.sr;					% === Sample Rate? === %
% sigIn		= data.signalIn;					% === Gets input signal === %



infile = 'G:\SRP2015\RB SRP Data\Screenings\002_MB\002_MB_Screening.wav';

[sigIn, fs] = audioread(infile);

sigIn		= resample(sigIn, data.params.sr * data.params.downfact, fs);
sigInCell	= makecell(sigIn, data.params.frameLen * data.params.downfact);

AudapterIO('init', p);

Audapter('setParam', 'rmsthr', 5e-3, 0);

Audapter('reset');

for n = 1 : length(sigInCell)
	Audapter('runFrame', sigInCell{n});
end

data1		= AudapterIO('getData');



%% Visualization: input sound
figure('Position', [100, 100, 1400, 600], 'Name', 'Input spectrogram');
% subplot('Position', [0.05, 0.1, 0.45, 0.8]);
show_spectrogram(data1.signalIn, fs, 'noFig');
frameDur	= data1.params.frameLen / data1.params.sr;
tAxis		= 0 : frameDur : frameDur * (size(data1.fmts, 1) - 1);

if isequal(pertMode, 'formant');
	plot(tAxis, data1.fmts(:, 1 : 2), 'b');
end

frameDur	= data.params.frameLen / data.params.sr;
tAxis		= 0 : frameDur : frameDur * (size(data.rms, 1) - 1);
plot(tAxis, data1.ost_stat, 'k-');

if isequal(pertMode, 'formant')
	legend({'F1 (original)', 'F2 (oringina)', sprintf('OST status * %d', OST_MULT)});
else
	legend({sprintf('OST status * %d', OST_MULT)});
end

xlabel('Time (s)');
ylabel('Frequency (Hz)');

%% Visualization: output sound
figure('Position', [100, 100, 1400, 600], 'Name', 'Output spectrogram');
% subplot('Position', [0.5, 0.1, 0.45, 0.8]);
show_spectrogram(data1.signalOut, fs, 'noFig');

if isequal(pertMode, 'formant')
	plot(tAxis, data1.fmts(:, 1 : 2), 'b');
	plot(tAxis, data1.sfmts(:, 1 : 2), 'k');
end

plot(tAxis, data1.ost_stat * 500, 'k-');
if isequal(pertMode, 'formant')
	legend({'F1 (original)', 'F2 (oringina)', 'F1 (shifted)', 'F2 (shifted)', sprintf('OST status * %d', OST_MULT)});
else
	legend({sprintf('OST status * %d', OST_MULT)});
end
xlabel('Time (s)');
ylabel('Frequency (Hz)');

drawnow;

bPlay = true;
%%
if bPlay
	soundsc(data1.signalIn, fs)
	soundsc(data1.signalOut, fs);
end