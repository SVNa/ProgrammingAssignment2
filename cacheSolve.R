##To get the cached values 

cacheSolve <- function(x, ...) {
##gets the inverse matrix from makeCacheMatrix
        i <- x$getinverse()

##Checks if the inverse has already been computed. If yes, it prints the cached
##inverse instead with a message
        if(!is.null(i)) {
                message("getting cached data")
                return(i)
        }

##If the inverse hasn't already been computed, it computes the inverse.
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}