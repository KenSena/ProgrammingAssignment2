makeCacheMatrix <- function(x=matrix()){

a <- NULL

set <- function(y){

x <<- y

a <<- NULL

}

get <- function(){

x

}

setInverse <- function(inverse){

a <<- inverse

}

getInverse <- function(){

a

}

list(set=set,get=get,setInverse=setInverse,getInverse=getInverse)

}


cacheSolve <- function(x, ...){

a <- x$getInverse()

if(!is.null(a)){

message("getting cached data")

return(a)

}

b <- x$get()

a <- solve(b, ...)

x$setInverse(a)

a

}