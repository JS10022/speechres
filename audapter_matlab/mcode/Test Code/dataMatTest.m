subject		= '000_NH';
infile		= 'G:\SRP2015\RB SRP Data\Screenings\002_MB\002_MB_Screening.wav';

addpath c:/speechres/commonmcode
cds('audapter_matlab');

% samples = [2547, 5090];

% [sigIn, fs] = audioread(infile, samples);		% === fs is 44.1 kHz === %

[sigIn, fs] = audioread(infile);				% === fs is 44.1 kHz === %

sigIn		= resample(sigIn, 48000, fs);
% sigInCell	= makecell(sigIn, data.params.frameLen * data.params.downfact);

show_spectrogram(sigIn, fs);

% for n = 1 : length(sigInCell)
% 	Audapter('runFrame', sigInCell{n});
% end



%{
data.signalIn		= sigIn;
data.signalOut		= sigIn;
data.intervals
data.rms
data.fmts
data.rads
data.dfmts
data.sfmts
data.rms_slope
data.ost_stat
data.params
data.paceStimParams
data.meanSylDur		= 0.1328;
data.meanPeakRMS	= 0.0288;
data.meanPeakLevel	= 75.2193;
data.subject		= subject;
data.t_nVowels		= 0;
data.t_mean_ivi		= NaN;
data.t_cv_ivis		= NaN;
data.t_ivis			= [];
data.t_mean_vwl_lv	= NaN;
data.timeStamp		= clock;
%}