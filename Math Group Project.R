f = function(x) 120 * x[1] + 120 * x[2] + 120 * x[3] + 150 * x[4] + 150 * (x[5] + x[6]) + 180 * x[7]


g_ineq = function(x){
  
  h = 0
  h[1] = 6 * x[1] - 32
  h[2] = 6 * x[2] - 68
  h[3] = 6* (x[1] + x[3]) - 56
  h[4] = 6 * (x[2] + x[4]) - 76
  h[5] = 6 * (x[3] + x[5] + x[6]) - 64
  h[6] = 6 * (x[4] + x[6] + x[7]) - 28
  h[7] = 6 * (x[5] + x[7]) - 8
  h[8] = x[1]
  h[9] = x[2]
  h[10] = x[3]
  h[11] = x[4]
  h[12] = x[5]
  h[13] = x[6]
  h[14] = x[7]
  
  return(h)
}


p0=rep(15,7)
answer = constrOptim.nl(p0,f,hin = g_ineq)
answer$value
round(answer$par)


