function CH_uV = uV(CH1_vrednosti)

Vref = 4.5;
Gain = 24;
skala = (Vref/(2^23-1))/Gain;
%prebacivanje u uV
CH_uV = CH1_vrednosti.*skala*10^6;
end