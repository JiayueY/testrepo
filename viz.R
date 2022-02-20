#hi!there

#hello

generateSudoku<-
  
  function (Nblank = 45, print.it = FALSE) 
    
  {
    
    z <- c(1:8, 4:8, 1:3, 7:8, 1:6, 2:8, 1, 5:8, 1:4, 8 , 1:7, 
           
           3:8, 1:2, 6:8, 1:5)
    
    z <- matrix(sample(8)[z], 8, 8)
    
    for (i in 1:5) z <- z[replicate(2, sample(2)) + 2 * rep(sample(0:3),each = 4), 
                          
                          replicate(2, sample(2)) + 2 * rep(sample(0:3),each = 4)]
    
    for (bi in seq(0, 6, 2)) for (bj in seq(0, 6, 2)) {
      
      idx <- data.matrix(expand.grid(bi + 1:4, bj + 1:2))
      
      z[idx[sample(1:8, Nblank%/%8), ]] <- 0
      
    }
    
    while (sum(!z) < Nblank) z[matrix(sample(8, 2), 1)] <- 0
    
    if (print.it) 
      
      printSudoku(z)
    
    z
    
  }
library(devtools);
load_all("."); # Working directory should be in the package SCC_R_package

F_to_C(79);

C_to_F(20);

