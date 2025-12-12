library(pwr)
# Gr1,3 -------------------------------------------------------------------
n_nativeJun <- 1511
powerJun<- round(pwr.2p.test(h=ES.h(.9221, .894), sig.level=.05, power=.8,
            alternative="greater")[["n"]] + (pwr.2p.test(h=ES.h(.9221, .894), sig.level=.05, power=.8,
                     alternative="greater")[["n"]])*0.1,0)


print(paste("В выборке пациенток до 40 лет для достижения эффекта нужно исследовать не менее",powerJun, "пациенток."))
print(paste("Исследовано в выборке до 40 лет ",round((n_nativeJun/powerJun)*100,2), "% случаев и требуется еще ",100-round((n_nativeJun/powerJun)*100,2),"%" ))


# Gr2,4 -------------------------------------------------------------------
n_nativeSin <- 1283  
powerSin <- round(pwr.2p.test(h=ES.h(.929, .90), sig.level=.05, power=.8,
                              alternative="greater")[["n"]] + (pwr.2p.test(h=ES.h(.929, .90), sig.level=.05, power=.8,
                                                                           alternative="greater")[["n"]])*0.1,0)
print(paste("В выборке пациенток после 40 лет для достижения эффекта нужно исследовать не менее",powerSin, "пациенток."))
print(paste("Исследовано в выборке после 40 лет ",round((n_nativeSin/powerSin)*100,2), "% случаев и требуется еще ",100-round((n_nativeSin/powerSin)*100,2),"%" ))

