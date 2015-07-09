% "Commands" - A script file with frequently used commands which I don't
% feel like searching for and copy/pasting all the time.



%%%%%%%	Startup and Initialization	%%%%%%%

	addpath c:/speechres/commonmcode
	cds('audapter_matlab');



%%%%%%%	Tests and Demos	%%%%%%%
	
% 	test_audapter('formant',  '--play'    );
% 	test_audapter('pitch',    '--play'    );
% 	test_audapter('timeWarp', '--play'    );
% 	audapterDemo_triphthong(  '--play'    );
	
% 	audapterDemo_online('persistentFormantShift', 'male');
	
%%%%%%%	Config File Edit %%%%%%%
	
	% edit expt_config_fmt.txt
	% edit expt_configFN.txt
	
	% edit getAudapterDefaultParams.m
	
	
%%%%%%%	Get data file %%%%%%%

% 	data = AudapterIO('getData');
% 	data
	
	
%%%%%%%	Run Experiment %%%%%%%
	
% 	Audapter;
% 	Audapter('info');
% 	Audapter('start');
	
% 	runExperiment expt_config_fmt.txt twoScreens
	runExperiment expt_config_fmt.vowels.txt
% 	catExperiment expt_config_fmt.vowels.txt
% 	catExperiment expt_config_fmt.caterpillar.txt
	

	
	
	
	
	