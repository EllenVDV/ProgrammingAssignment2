## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  # set cache value to NULL
  cache <- NULL
  
  # create matrix
  set <- function(y) {
    x <<- y
    cache <<- NULL
  }
  
  # get the matrix
  get <- function() x
  
  # store the inverted matrix in the cache
  setMatrix <- function(inverse) cache <<- inverse
  
  # get the inverted matrix from cache
  getInverse <- function() cache
  
  list(set = set, get = get,
       setMatrix = setMatrix,
       getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  #get the inverse of the matrix from the cache
  cache <- x$getInverse()
  
  # if the cache already contains an inverted matrix show this one
  # else create the inverted matrix and store in the cache
  if (!is.null(cache)) {
    message("getting cached data")
    
    # display matrix in console
    return(cache)
  }
  
  matrix <- x$get()
  cache <- solve(matrix, ...)

  # show the matrix
  return (cache)
}
