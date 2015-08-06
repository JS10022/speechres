% "Commands" - A script file with frequently used commands which I don't
% feel like searching for and copy/pasting all the time.



%%	Startup and Initialization

	addpath c:/speechres/commonmcode
	cds('audapter_matlab');
	Audapter('deviceName', 'AudioBox');
% 	Audapter(3, 'srate', 11025);
% 	Audapter(3, 'downfact', 4);
% 	Audapter(3, 'framelen', 128);
	
% 	which Audapter

%% 	Tests and Demos
	
% 	test_audapter('formant',  '--play'	);
% 	test_audapter('pitch',	'--play'	);
% 	test_audapter('timeWarp', '--play'	);
% 	audapterDemo_triphthong('--play');
	
% 	audapterDemo_online('persistentFormantShift', 'male', 'fb', 4);
%	audapterDemo_online('persistentPitchShift');
% 	audapterDemo_online('twoShortPitchShifts');
% 	audapterDemo_online('focalFormantShift', 'male');

% 	audapterDemo_online('playWave');
	


%%	Config File Edit
	
% 	edit expt_config_fmt.txt
% 	edit expt_configFN.txt
	
% 	edit getAudapterDefaultParams.m
	
	
%% Get data file

% 	data = AudapterIO('getData');
% 	data
	
% 	data = Audapter('getData');
% 
% 	length(data)
	
	
%% Run Experiment
	
	Audapter('reset');
% 	Audapter('info');
%	Audapter('start');

	
% 	runExperiment expt_config_fmt.txt % twoScreens
	runExperiment expt_config_fmt.vowels.txt

% 	ultralite


%% Other Testing
%{
Audapter(1);

% Wait for key press
% KbStrokeWait;
input('Press ENTER key to end');

Audapter(2);

data = Audapter('getData');
length(data)
%}
	