5 + 9 
x <- 5+3
print(x)

z <- c(1, 1, 3, 4.56)
z <- c(z, 344, z)
z

z <- z * 2 + 100
z

pi:20
15:1
seq(1, 20)
seq(1, 20, 0.2)
seq(5, 20, length=20)
my_seq <- seq(5, 20, length=20)
my_seq
length(my_seq)

my_var <- c(0, 1, 3)
rep(my_var, times=10)
rep(my_var, each=10)

num_vect <- c(0.5, 55, -10, 6)
tf <- num_vect < 1
tf
rf <- num_vect >= 6
rf

my_char <- c("My", "Name", "is")
my_char <- paste(my_char, collapse= " ")
my_char
my_char <- paste(c(my_char, "Anjan"), collapse= " ")
my_char