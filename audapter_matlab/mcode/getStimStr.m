function msg = getStimStr(thisphase)
switch(thisphase)
    case 'para'
        msg = 'Do you like amusement parks?  Well, I sure do.  To amuse myself, I went twice last spring.  My most MEMORABLE moment was riding on the Caterpillar, which is a gigantic rollercoaster high above the ground.  When I saw how high the Caterpillar rose into the bright blue sky I knew it was for me.  After waiting in line for thirty minutes, I made it to the front where the man measured my height to see if I was tall enough.  I gave the man my coins, asked for change, and jumped on the cart.  Tick, tick, tick, the Caterpillar climbed slowly up the tracks.  It went SO high I could see the parking lot.  Boy was I SCARED!  I thought again to myself, �There�s no turning back now.�  People were so scared they screamed as we swiftly zoomed fast, fast, and faster along the tracks.  As quickly as it started, the Caterpillar came to a stop.  Unfortunately, it was time to pack the car and drive home.  That night I dreamt of the wild ride on the Caterpillar.  Taking a trip to the amusement park and riding on the Caterpillar was my MOST memorable moment ever!';
    case 'cater'
        msg = 'Do you like amusement parks?  Well, I sure do.  To amuse myself, I went twice last spring.  My most MEMORABLE moment was riding on the Caterpillar, which is a gigantic rollercoaster high above the ground.  When I saw how high the Caterpillar rose into the bright blue sky I knew it was for me.  After waiting in line for thirty minutes, I made it to the front where the man measured my height to see if I was tall enough.  I gave the man my coins, asked for change, and jumped on the cart.  Tick, tick, tick, the Caterpillar climbed slowly up the tracks.  It went SO high I could see the parking lot.  Boy was I SCARED!  I thought again to myself, �There�s no turning back now.�  People were so scared they screamed as we swiftly zoomed fast, fast, and faster along the tracks.  As quickly as it started, the Caterpillar came to a stop.  Unfortunately, it was time to pack the car and drive home.  That night I dreamt of the wild ride on the Caterpillar.  Taking a trip to the amusement park and riding on the Caterpillar was my MOST memorable moment ever!';
	case 'str_cell'
        msg = 'UH OH EH UU IH OO AY AH AE';
%{
    case 'pract1'											% pract1
        msg = {'Please read the words displayed on the screen.',...
				'You will hear your speech through the headphones as you read the words.',...
				'',...
				'It will tell you how loud you''ve spoken. Please carefully',...
				'adjust your loudness to enter the acceptance range. ',...
				'',...
				'A trial will be repeated until your loudness is correct.',...
				};
    case 'pract2'											% pract2
        msg = {'Well done!',...
				'',...
				'Now, in addition to the loudness, you will be given feedback about ', ...
				'how long you''ve spoken.',...
				'', ...
				'Please carefully adjust your word length to enter the correct range.',...
				'',...
				'A trial will be repeated until both your loudness and your word length.', ...
				'are correct.'};
    case 'start'											% start
        msg = {'Good job!',...
				'',...
				'Now, please try to keep the volume and speed you''ve learned ',...
				'throughout the rest of the experiment.'};
    case 'ramp'
        msg = {''};
%}
    otherwise,
        msg = {''};
end
    
