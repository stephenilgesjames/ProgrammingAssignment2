# Introduction.

This is two answer Assignment 2 in the John Hopkins Coursera course R programming. 
And my answer is based on the example they used.
Listed are the two functions
 Two Functions makeCacheMatrix (x) and cacheSolve()

makeCacheMatrix <- function(x = matrix()) {
        mi <- NULL
        set <- function(y) {
                x <<- y
                mi <<- NULL
        }
# place the matrix in memory        
        get <- function() x
#place the solve(matrix) ie inverse matrix into memory 
        setinvmatrix <- function(solve) mi <<- solve
        getinvmatrix <- function() mi
        list(set = set, get = get,
             setinvmatrix = setinvmatrix,
             getinvmatrix = getinvmatrix)
}

cacheSolve <- function(x, ...) {
        #if the mi in makeCacheMatrix exists then return it ie the inverse matrix
        
        mi <- x$getinvmatrix()
        if(!is.null(mi)) {
                message("getting cached data")
                return(mi)
        }
        #Else solve the inverse matrix and set it 
        data <- x$get()
        message ("doing the inverse")
        mi <- solve(data, ...)
        x$setinvmatrix(mi)
        mi
        
}



