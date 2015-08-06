Audapter('deviceName', 'AudioBox');		% === Was " MOTU Audio " === %
Audapter(3, 'srate', 12000);
Audapter(3, 'downfact', 4);
Audapter(3, 'framelen', 128);			% === Was 16 === %

Audapter playTone;

pause(1);
Audapter(1);
pause(3);
Audapter(2);

sig = Audapter(4);

show_spectrogram(sig(:, 1), 12e3);