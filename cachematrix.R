## Put comments here that give an overall description of what your
## functions do

# The following function is an utility function which helps in
# getting and setting the matrix and its inverse.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    setMatrix <- function(m) {
        x <<- m
        inv <<- NULL
    }
    getMatrix <- function() x
    setInverse <- function(solved) inv <<- solved
    getInverse <- function() inv
    list(setMatrix = setMatrix,
         getMatrix = getMatrix,
         setInverse = setInverse,
         getInverse = getInverse)
}


# The following function is used to solve the inverse of a matrix
# from cache instead of computing it everytime. 

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
    if(!is.null(inv)) {
        message("Return from the cache")
        return(inv)
    }
    mtrx <- x$getMatrix()
    inv <- solve(mtrx)
    x$setInverse(inv)
    inv
}
