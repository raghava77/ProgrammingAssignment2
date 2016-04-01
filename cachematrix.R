## Put comments here that give an overall description of what your
## functions do
## Hello
## Write a short comment describing this function
## makeCacheMatrix creates a matrix that contains Cache its inverse
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse of the matrix
## 4. get the value of the inverse of the matrix


makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
             x <<- y
             inv <<- NULL
         }
         get <- funtion() x
         setinverse <- function(inverse) inv <<- inverse
         getinverse <- function() inv
         list(set = set, get = get,
              setinverse = setinverse,
              getinverse = getinverse)
           
           }



# The below function returns the inverse of the matrix. It first checks if
# the inverse has already been computed. If so, it gets the result and skips the
# computation. If not, it computes the inverse, sets the value in the cache via
# setinverse function.

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
       inv <- x$getinverse()
       if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data, ...)
        x$setinverse(inv)
        inv
}
