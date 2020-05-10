## Put comments here that give an overall description of what your
## functions do...
## The goal of this assingment is to write two functions "makeCacheMatrix" and "cacheSolve" 
## that cache the oppsite of the the matirx, for later use

makeCacheMatrix <- function(x = matrix()) {
  
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() inv
  list(set = set, get = get, setinv = setinv, getinv = getinv)
}

## Write a short comment describing this function...
## The function "makeCacheMartix" outputs a special object(matrix) that can 
## be called upon later when needed. For the purpose of this assigment the function 
##will return a matrix

m

## Write a short comment describing this function...
## The function  caheSolve takes that used the output matirx from makeCacheMAtrix and computes the
## inverse of this matrix. If some how the inverse has already been calculated, meaning that the 
## matriz has not changed then the below function(cacheSolve) will take the inverse stored as cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinv()
  if(!is.null(inv)){
    message("getting cached results") 
    return(inv)
  }
  data<- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  inv
  
} 

##check 
m <- matrix(rnorm(16), 4,4 )
m1 <- makeCacheMatrix(m)
cacheSolve(m1)

##Testing the functions and if they are working properlly [Below is the output from above]
##[,1]       [,2]      [,3]        [,4]
##[1,] -7.803608 -12.998453  8.301924  3.35317319
##[2,]  2.828511   5.942937 -3.139019 -1.79923901
##[3,]  4.266665   8.208400 -4.038574 -2.32029439
##[4,] -1.879062  -2.802137  2.441668  0.08553429