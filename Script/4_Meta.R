# R Advanced programming
# 





# Chapter 18 --------------------------------------------------------------

# Libraries
library(rlang)
library(lobstr)


code <- expr(y <- x * 10)

code

x <- 5

eval(code)

y

# Abstract Sytax Trees





fct_case_when <- function(...) {
  args <- as.list(match.call())
  levels <- sapply(args[-1], function(f) f[[3]])  # extract RHS of formula
  levels <- levels[!is.na(levels)]
  factor(dplyr::case_when(...), levels=levels)
}



lobstr::ast(fct_case_when())


View(expr(f(x, "y", 1)))


lobstr::ast(f(x,"y", 1))




lobstr::ast(f(g(1, 2), h(3, 4, i())))


expr(`<-`(y, `*`(x, 10)))

# Exc 18.2.4

lobstr::ast(f(g(h())))

lobstr::ast(
  1+2+3
)

lobstr::ast(
  (x+y)*z
)






lobstr::ast(
  f(g(h(i(1, 2, 3))))
)

lobstr::ast(
  f(1, g(2, h(3, i())))
  )

lobstr::ast(
  f(g(1, 2), h(3, i(4, 5)))
  
)


1 %/% 0.2



lobstr::ast(`x` + `y`)

lobstr::ast(x ** y)

lobstr::ast(1 -> x)




lobstr::ast(function(x = 1, y = 2) {})


rlang::is_syntactic_literal(x)

identical(expr(TRUE), TRUE)
identical(expr(1), 1)
identical(expr(2L), 2L)
identical(expr("x"), "x")

# turning strings into symbols
x <- 10

expr(x)

eval(sym("x"))

rlang::syms(c("x","y"))


# Calls
lobstr::ast(read.table("important.csv", row.names = FALSE))

x <- expr(read.table("important.csv", row.names = FALSE))
x
typeof(x)
is.call(x)


## Subsetting
lobstr::ast(read.table("important.csv", row.names = FALSE))
as.list(x)
x[1]
x[2]
x[3]

x[2]
x[[2]]

# standardizing the call names for argument matching
x
rlang::call_standardise(x)
