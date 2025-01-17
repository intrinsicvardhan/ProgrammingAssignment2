## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv<-NULL 
        set<-function(y) {
                X<<-y
                inv<<-NULL
        }
        get<-function() X
        setInv<-function(solve) inv<<-solve
        getInv<-function() inv

        return( list(set = set, get = get, setInv = setInv, getInv = getInv))
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        X<-X$getInv
        if(!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        data<- X$get()
        inv<-solve(data, ...)
        X$setInv(inv)
        X
}
