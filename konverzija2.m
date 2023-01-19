function  GyroX_vr = konverzija2(GyroX_bajtovi)
GyroX_vr = GyroX_bajtovi(1)*2^8+GyroX_bajtovi(2);
end