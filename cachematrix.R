## These are functions to cache the inverse of a matrix to avoid the
## repetition of the computation of the inverse



## The function MakeCacheMatrix creates an object with funtions to:
## set the value of the matrix
## get the value of the matrix
## set the value of the inverse of the matrix
## get the value of the inverse of te matrix

makeCacheMatrix <- function(x = matrix()){
## Creates a special "matrix", which is really a list containing a function to:
##    1. set the value of the matrix
##    2. get the value of the matrix
##    3. set the value of the inverse
##    4. get the value of the inverse
   solv <-NULL
   set <- function(y){
       x <<- y
       solv <<- NULL
   }
   get<- function() x
   setSolve <- function(solve) solv <<- thesolve(x)
   getSolve <- function() solv
   list(set = set, get = get, SetSolve = SetSolve, getSolve = getSolve}

}


## The function cacheSolve looks if the inverse of the matrix is computed and
## if the matrix has not ben changed it display the inverse. Otherwise,
## it computes the inverse and displays it.


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
   data <- x$get();
   if(identical(x, data)){
       solv <- x$getSolve();
       if(!is.null(solv)) {
           return(solv)
       }
   }
   else{
       solv <- solve(data, ...)
       solv
       }
}

}
