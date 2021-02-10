## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# it creates a special vector that makes a list of fucntion to set and get the value
#of vector as well as set and get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
      x <<- y
      inv <<- NULL
  }
  get <- function () x
  setinv <- function (inverse) inv <<- inverse
  getinv <- function() inv
  list(set = set, get =get,
       setinv = setinv, 
       getinv = getinv)
  
}


## Write a short comment describing this function
# it calculates the inverse of the vector from the function above
cacheSolve <- function (x, ...) {
## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)) {
        message ("getting cached data")
        return (inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
  
}

