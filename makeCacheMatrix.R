##Inputs the matrix
##Caculates the inverse of it and caches it in 'i' 

makeCacheMatrix <- function(x = matrix()) {
        i <- NULL

##Passes the matrix into 'x' with the special assignment operator <<- to cause
##a search for to be made in this function's environment
        set <- function(y) {
                x <<- y		
                i <<- NULL
        }
        get <- function() x

##Finding the inverse of the matrix
        setinverse <- function(solve) i <<- solve
        getinverse <- function() i

        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}