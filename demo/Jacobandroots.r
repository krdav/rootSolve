

example(uniroot.all)
example(gradient)

# Demonstration of how the banded and full jacobian look like...

mod <- function (t=0,y=c(1,2,3,4), parms=NULL,...)
{
 dy1<-y[1] + 2*y[2]
 dy2<-3*y[1] + 4*y[2] + 5*y[3]
 dy3<-6*y[2] + 7*y[3] + 8*y[4]
 dy4<-9*y[3] + 10*y[4]
 return(as.list(c(dy1,dy2,dy3,dy4)))
}

jacobian.band(y=c(1,2,3,4),func=mod)
jacobian.full(y=c(1,2,3,4),func=mod)
