InitializePsychSound;
beep=MakeBeep(500,30);
beep1=[beep;zeros(size(beep))];
beep2=[zeros(size(beep));beep];
pamaster=PsychPortAudio('Open');
PsychPortAudio('FillBuffer',pamaster,beep1);
PsychPortAudio('Start',pamaster,1);
PsychPortAudio('Stop',pamaster,1);
PsychPortAudio('FillBuffer',pamaster,beep2);
PsychPortAudio('Start',pamaster,1);
PsychPortAudio('Stop',pamaster,1);
PsychPortAudio('Close',pamaster);