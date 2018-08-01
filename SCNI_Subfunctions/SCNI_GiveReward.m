function [Params] = SCNI_GiveReward(Params)

%============================ SCNI_GiveReward.m ===========================
% Sends the pre-loaded reward delivery square wave out to the solenoid via
% the specified DAC channel of the DataPixx2.

if Params.DPx.AnalogReward == 1
    Delay = 0;
    Datapixx('SetDacSchedule', Delay, Params.DPx.AnalogOutRate, Params.DPx.ndacsamples, Params.DPx.RewardChnl, Params.DPx.dacBuffAddr, Params.DPx.ndacsamples);
    Datapixx('StartDacSchedule');
    Datapixx('RegWrRd');
    disp(Datapixx('GetDacStatus'));
    Params.Reward.RunCount = Params.Reward.RunCount + 1;
end


end