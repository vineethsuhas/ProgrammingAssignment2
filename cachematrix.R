## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    setMatrix <- function(m) {
        x <<- m
        inverse <<- NULL
    }
    getMatrix <- function() x
    setInverse <- function(solved) inverse <<- solved
    getInverse <- function() inverse
    list(setMatrix = setMatrix, 
         getMatrix = getMatrix,
         setInverse = setInverse,
         getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverse <- x$getInverse()
    if(!is.null(inverse)) {
        message("Return from the cache")
        return(inverse)
    }
    matrix <- x$get()
    inverse <- solve(matrix)
    x$setInverse(inverse)
    inverse
}
