
# Objetivo ----------------------------------------------------------------
# Evaluar y graficar la función de Gompertz


# Librerias ---------------------------------------------------------------
library(ggplot2)

t <- seq(from = 0, to = 120)
s_20 <- expression(exp(-0.003*1.07^20*(1.07^t-1)/log(1.07)))

s_20_t <- eval(s_20, list(t = t))

ggplot() +
  geom_line(aes(x = t, y = s_20_t))
