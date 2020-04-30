## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { # defining defult to be matrix
  
  inverse_inv <- NULL   # intializing inverse_inv varibale with "null" which will late hold the inverse matrix
  set <- function(y){  # this set function to assign new 
    x <<- y
    inverse_inv <<- NULL  # to set value to it is perent and reset inverse to null
    
    
    
  }
  
  get <- function()x  # defining get FUN, which will return the value of matrix
  
  inverse_set <- function(inverse) inverse_inv <<- inverse # to assigns value of inverse_inv in it's parent envi
  
  inverse_get <- function()inverse_inv         # to get inverse_inv once called
  
  list(set = set, get = get, inverse_set = inverse_set, inverse_get = inverse_get) # this will be used to refer to functions with $ operator
}


## Write a short comment describing this function

## This function will create special "matrix" object and can cache its inverse

## if the inverse has already been calculated then the cachesolve should retrive the inverse from the cache
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse_inv <- x$inverse_get
  
  if (!is.null(inverse_inv)){
    
    message("getting cached data")
    return(inverse_inv)
    
  }
  
  data <- inverse_inv$get()
  inverse_inv <- solve(data, ...)
  x$inverse_set(inverse_inv)
  inverse_inv
}
