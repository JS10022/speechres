function p = getAudapterParamSet()
p = struct;

paramNames = {'bShift'
				'bTrack'
				'bDetect'
				'bWeight'
				'bCepsLift'
				'bRatioShift'
				'bMelShift'
				'bGainAdapt'
				'bRMSClip'
				'bBypassFmt'
				'bPitchShift'
				'bDownSampFilt'
				'mute'
				'sRate'
				'frameLen'
				'nDelay'
				'nWin'
				'nLPC'
				'nFmts'
				'nTracks'
				'avgLen'
				'cepsWinWidth'
				'fb'
				'minVowelLen'
				'pvocFrameLen'
				'pvocHop'
				'nfb'
				'tsgNTones'
				'downFact'
				'stereoMode'
				'pvocAmpNormTrans'
				'delayFrames'
				'scale'
				'preemp'
				'rmsThr'
				'rmsRatio'
				'rmsFF'
				'dFmtsFF'
				'rmsClipThresh'
				'wgFreq'
				'wgAmp'
				'wgTime'
				'f1Min'
				'f1Max'
				'f2Min'
				'f2Max'
				'LBk'
				'LBb'
				'trialLen'
				'rampLen'
				'aFact'
				'bFact'
				'gFact'
				'fn1'
				'fn2'
				'pitchShiftRatio'
				'rmsFF_fb'
				'fb4GainDB'
				'fb3Gain'
				'datapb'
				'pertF2'
				'pertAmp'
				'pertPhi'
				'gain'
				'tsgToneDur'
				'tsgToneFreq'
				'tsgToneAmp'
				'tsgToneRamp'
				'tsgInt'
				};

% TODO: datapb length

for i1 = 1 : numel(paramNames)
	pn = paramNames{i1};

	p.(pn) = Audapter('getParam'
			 pn);
end

% --- Aliased paramters --- %
p.rmsThresh = p.rmsThr;
p.sr = p.sRate;

return