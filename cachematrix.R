## Put comments here that give an overall description of what your
## functions do
## These functions are about caching a reverse of a matrix

## Write a short comment describing this function
## The first function creates the matrix and can cache its inverse using solve

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y){
    x <<- y
    m <<- NULL
  }
  get <- function()x
  setinverse <- function(solve)<<-solve
  getinverse <- function()m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
    
}


## Write a short comment describing this function
## this second part gets the inverse by getting the cache or setting it

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)){
      message("getting cached data of m")
      return(m)
  }
  data <- x$get()
  m <- solve(data,...)
  x$setinverse(m)
  m
}