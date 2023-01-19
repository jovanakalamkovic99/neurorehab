function CH1_vrednost = vr_kanala(j,kanal)
    CH_bajtovi = poruka_cela(pravi_poc(j)+3*(kanal-1)+1:pravi_poc(j)+3+3*(kanal-1));
    CH1_vrednost = konverzija(CH_bajtovi);




end