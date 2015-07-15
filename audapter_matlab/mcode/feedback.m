function feedback( seconds )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
if nargin < 1 || isempty(seconds)
	seconds = 2;
end


masking = audioread('noise.wav');
player	= audioplayer(masking, 28000);
play(player);
pause(0.5);

Audapter('deviceName', 'AudioBox');
Audapter(3, 'srate', 12000);
Audapter(3, 'downfact', 4);
Audapter(3, 'framelen', 256);
% Audapter(3, 'fb3Gain', 1.0);
% Audapter(3, 'fb', 1);
% Audapter(3, 'stereoMode', 2);			% 0: Left channel only; right channel muted
										% 1: Identical audio signals in left & right channels
										% 2: Audio signal in left channel; simulated TTL pulses
										%	 for indicating pitch perturbation intervals in right
										%	 channel. 

										


% Audapter playTone;
Audapter(1);
pause(seconds);
Audapter(2);
stop(player);

end

