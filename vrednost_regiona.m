function vr_reg = vrednost_regiona(CH)
    reg1=(CH(1)+CH(3)+CH(11))/3;
    reg2=(CH(22)+CH(17))/2;
    reg3=(CH(2)+CH(4)+CH(12))/3;
    reg4=(CH(5)+CH(13)+CH(20))/3;
    reg5=(CH(18)+CH(23))/2;
    reg6=(CH(6)+CH(14)+CH(21))/3;
    reg7=(CH(7)+CH(9)+CH(15))/3;
    reg8=(CH(19)+CH(24))/2;
    reg9=(CH(8)+CH(10)+CH(16))/3;
    
    vr_reg = [reg1,reg2,reg3,reg4,reg5,reg6,reg7,reg8,reg9];
end