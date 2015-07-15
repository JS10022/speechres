function [ output_args ] = dspPlayback( input_args )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here




H = dsp.AudioFileReader('beep.wav');
HAP = dsp.AudioPlayer;
while ~isDone(H)
	Hstep = step(H);
	step(HAP, Hstep);
end

pause(HAP.QueueDuration);  % Wait until audio plays to the end

release(H);
release(HAP);

end

