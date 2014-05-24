##Inputs the matrix
##Caculates the inverse of it and caches it in 'i' 

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL
        set <- function(y) {
                x <<- y		
                i <<- NULL
        }
        get <- function() x

## finding the inverse of the matrix
        setinverse <- function(solve) i <<- solve
        getinverse <- function() i

        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}