
# Objetivo ----------------------------------------------------------------
# Evaluar y graficar la función de Gompertz


# Librerias ---------------------------------------------------------------
library(ggplot2)

t <- seq(from = 0, to = 50, by = 0.01)
f_20 <- expression(0.0003*1.07^(20+t)*exp(-0.003*1.07^20*(1.07^t-1)/log(1.07)))
f_50 <- expression(0.0003*1.07^(50+t)*exp(-0.003*1.07^50*(1.07^t-1)/log(1.07)))
f_80 <- expression(0.0003*1.07^(80+t)*exp(-0.003*1.07^80*(1.07^t-1)/log(1.07)))

f_t_20 <- eval(f_20, list(t = t))
f_t_50 <- eval(f_50, list(t = t))
f_t_80 <- eval(f_80, list(t = t))

ggplot() +
  geom_line(aes(x = t, y = f_t_20), colour = "darkred") +
  geom_line(aes(x = t, y = f_t_50), colour = "darkblue") +
  geom_line(aes(x = t, y = f_t_80), colour = "darkgreen") +
  xlab("t") + ylab("f(t)") +
  xlim(0, 50) + ylim(0, 0.07)
