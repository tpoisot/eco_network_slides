traits = function(S, C)
{
   NichePos = runif(S, 0, 1)
   Range = NichePos * rbeta(S, 1, (1/C-1))
   Range[which.min(NichePos)] = 0
   Centroid = numeric(S)
   for(i in c(1:S)) Centroid[i] = runif(1, Range[i]/2, NichePos[i])
   return(data.frame(cbind(n=NichePos, r=Range, c=Centroid)))
}

interaction = function(ti, tj) as.numeric((tj$n <= ti$c+ti$r/2)&(tj$n >= ti$c-ti$r/2))

nmfw = function(S, C)
{
   Traits = traits(S, C)
   A = matrix(0, ncol=S, nrow=S)
   for(i in c(1:S))
   {
      for(j in c(1:S))
      {
         A[i,j] = interaction(Traits[i,], Traits[j,])
      }
   }
   return(A)
}
