

f = function(x) 120 * x[1] + 120 * x[2] + 120 * x[3] + 150 * x[4] + 150 * (x[5]) 


g_ineq = function(x){
  
  h = 0
  h[1] = 6 * x[1] - 8
  h[2] = 6 * x[2] - 17
  h[3] = 6* (x[1] + x[3]) - 14
  h[4] = 6 * (x[2] + x[4]) - 19
  h[5] = 6 * (x[3] + x[5]) - 16
  h[6] = 6 * x[4] - 7
  h[7] = 6 * x[5] - 2
  h[8] = x[1]
  h[9] = x[2]
  h[10] = x[3]
  h[11] = x[4]
  h[12] = x[5]
 
  
  return(h)
}


p0=rep(15,5)
answer = constrOptim.nl(p0,f,hin = g_ineq)
answer$value
round(answer$par)

