## These functions cache the inverse of a matrix

## This function creates a special "matrix", which is really a list containing
## a function to
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the value of the inverse
## 4. get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL
	set <- function(y) {
		x <<- y
		m <<- NULL
	}
	get <- function() x
	setinverse <- function(solve) m <<- solve
	getinverse <- function() m
	list(set = set, get = get,
		setinverse = setinverse,
		getinverse = getinverse)
}


## The following function calculates the inverse of the special "matrix"
## created with the above function.

cacheSolve <- function(x, ...) {
	m <- x$getinverse()
	if(!is.null(m){
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	s$setinverse(m)
	m
}
