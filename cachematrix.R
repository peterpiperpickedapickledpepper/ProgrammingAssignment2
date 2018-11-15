## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

## As per the guidance in the exercise the makeCacheMatrix function
##creates a list containing a function that sets the value of the
## matrix, gets the value, sets the value of the inverse and then gets
## the value of the inverse


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  

  set <- function(y) {
    x<<- y
    m <<- NULL
  }

  get <- function() x
  

  setinverse <- function(inverse) m <<- solve(x)
  
  

  getinverse <- function() m
  
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}


## Write a short comment describing this function

## the below function calculates the inverse of a matrix that was
## created above, however it firsts checks to see if the inverse
## has be calculated already. If it has, it gets the inverse from 
## the cache and skips the computation. otherwise it will calculate
## the inverse of the data and sets the value of the inverse in the 
## cache through setinverse function.

cacheSolve <- function(x, ...) {
  
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
    
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
