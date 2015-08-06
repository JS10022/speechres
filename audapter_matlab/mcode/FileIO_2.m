mbw = audioread('C:\speechres\audapter_matlab\mcode\mtbabble48k.wav');

player = audioplayer(mbw, 44000);

playblocking(player)