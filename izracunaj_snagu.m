function Pnovo = izracunaj_snagu(prozor)
    Fs = 160;                                                  
    L = length(prozor);
    Pnovo = [];
    for i = 1:24
%     
%         [Pxx,F] = periodogram(prozor(:,i),[],L,Fs);
%         indexi = (F>=8 & F <= 13);
%         
%         Palfa = sum(Pxx(indexi));
%         pTot = sum(Pxx);
        [pxx,f] = periodogram(prozor(:,i), [], L, Fs);
        p = bandpower(pxx,f,[8 13],'psd');
        pTot = bandpower(pxx,f,'psd');
        pp = p/pTot;
        Pnovo = [Pnovo, pp];
    end 
end