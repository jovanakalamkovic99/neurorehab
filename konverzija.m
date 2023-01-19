function CH1_vrednost = konverzija(CH1_bajtovi)
global CH1_neoznacena
CH1_neoznacena = CH1_bajtovi(1)*2^16+ CH1_bajtovi(2)*2^8+CH1_bajtovi(3);

if CH1_neoznacena > 2^24/2-1
    CH1_vrednost= CH1_neoznacena-2^24;
    
else
    CH1_vrednost= CH1_neoznacena;
end