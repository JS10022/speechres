function audioGate( seconds, mask )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
if nargin < 1 || isempty(seconds)
	seconds = 5;
end
if nargin < 2 || isempty(mask)
	mask = false;
end

% Reads in noise.wav file and creates audio player object
noise	= audioread('C:\toolbox\Stimulus\noise.wav');
player	= audioplayer(noise, 28000);

% Begins playing masking noise if indicated
if mask
	play(player);
	pause(0.25);
end

fprintf ('\t');
Audapter(1);
pause(seconds);
fprintf ('\t');
Audapter(2);

if mask
	stop(player);
end
end

