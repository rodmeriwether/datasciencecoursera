## This function checks to see if the matrix has already been created 
## and available in the parent environment. 
## If not, it creates it and returns the inverse of the matrix using the 
## solve function.
##
## Author RM  Date 2/21/2015
##
#############################################################################
makeCacheMatrix <- function(x = numeric()) {
    
  message("Instide Make Matrix")
  m <- NULL
     set <- function(y) {
       message("Inside set function")
       print(y)
       x <<- y
       m <<- NULL
       }
     get <- function() {
       message("inside GET function")
       print(x)
     }
     ## setmean <- function(mean) m <<- mean
     ##getmean <- function() m
     setInv <- function(){
               x <<- solve(m)
               print(m)
     } 
     getInv <- function(){
                m <<- solve(x)
                
                print(m)
     }
     list(set = set, get = get,
                setInv = setInv,          
                getInv = getInv)
   }





