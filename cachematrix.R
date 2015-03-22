## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

  m <- NULL                           
  
  set <- function(z) {          
    
    x <<- y                       
    m <<- NULL                    
    
  }
  get <- function() x                   
  
  setinvmat <- function(invmat) m <<- invmat  

  getinvmat <- function() m             
  
  
  list(set = set, get = get,            
       setinvmat = setinvmat,           
       getinvmat = getinvmat)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
  m <- x$getinvmat()                      
  
  if(!is.null(m)) {               
    
    message("getting cached data")
    
    return(m)
  }
  data <- x$get()             
  
  makeinvmatrix <- function(x=vector("numeric", length=2), y=vector("numeric", length=2)){
    mat <- rbind( x, y )
    print(mat)
    print(solve(mat))
        # print(solve(mat)%*%mat)
      
    m <- solve(mat)}
     
  x$invmat(m)                          
    m                           
}
}
