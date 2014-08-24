
#THis is assignment 2 based on the makeVector ()
# cacheMean in the readme document for the assignment

##  makeCacheMatrix puts the matrix and the inverse of the matrix into memory
## with the set puting inverse matrix ie solve(matrix) into memory and get is 
#retrivieng the matrix.
#1.  set the value of the matrix
#2.  get the value of the matrix
#3.  set the value of the inverse of the matrix
#4.  get the value of the inverse of the matrix


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


## The function tests if an inverse exists if so return it. if not
## do the inverse and set it.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
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
