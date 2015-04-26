## For the R Programming Assignment
## The purpose of this assignment is to write a pair of functions that cache the inverse of a matrix

## This function creates a special matrix object that can cache its inverse
## which is a list containing functions to
## 1 set the value of the matrix
## 2 get the value of the matrix
## 3 set the value of the inverse
## 4 get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
##set the value of the matrix
set <-function(y){
  x<<-y
  i<<-NULL
}
##get the value of the matrix
get<-function() x
##set the value of the inverse
setinverse<-function(inverse) i<<-inverse
##get the value of the inverse
getinverse<-function() i
list(
  set=set,
  get=get,
  setinverse=setinverse,
  getinverse=getinverse


  )
}


## This function calculates the inverse of the special "matrix"
## it first checks to see if the inverse has already been calculated
## if already calculated get the inverse from cache and skips computation


cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  i<-x$getinverse()
  ## If cached data is used diaplay message "getting cached data"
  if(!is.null(i)){
    message("getting cached data")
    return(i)
  }
  m<-x$get()
  i<-solve(m, ...)
  x$setinverse(i)
  i
  }

## Thankyou this is third commit for GitHub