## The following functions compute the inverse  
## of a given cached matrix
## Bellow is the function that cache the matrix:

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(x) {
    x <<- x
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) inv <<- solve(x)
  getinverse <- function() inv
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

## Bellow is the function that compute the inverse of the
## cached matrix:

cacheSolve <- function(x = matrix()) {
## Return a matrix that is the inverse of 'x'
  inv <- listef$getinverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- listef$get()
  inv <- solve(data)
  listef$setinverse(inv)
  inv
}

