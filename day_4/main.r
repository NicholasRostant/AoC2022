main <- function(){
    data <- read.csv("input.txt", header=FALSE)

    print("Star 1:")
    print(sum(apply(data,1,count_star_1),rm.na=TRUE)-1)
    print("Star 2:")
    print(sum(apply(data,1,count_star_2),rm.na=TRUE)-1)
}

count_star_2 <- function (x) {
    a = unlist(strsplit(x[1], split='-'))
    b = unlist(strsplit(x[2], split='-'))

    if (any(
            strtoi(a[1]):strtoi(a[2]) 
                %in% 
            strtoi(b[1]):strtoi(b[2])) 
            | 
        any(
            strtoi(b[1]):strtoi(b[2])
                %in% 
            strtoi(a[1]):strtoi(a[2]))) {
        return(TRUE)
    } else {
        return(FALSE)
    }
}

count_star_1 <- function (x) {
    a = unlist(strsplit(x[1], split='-'))
    b = unlist(strsplit(x[2], split='-'))

    if (all(
            strtoi(a[1]):strtoi(a[2]) 
                %in% 
            strtoi(b[1]):strtoi(b[2])) 
            | 
        all(
            strtoi(b[1]):strtoi(b[2])
                %in% 
            strtoi(a[1]):strtoi(a[2]))) {
        return(TRUE)
    } else {
        return(FALSE)
    }
}

main()