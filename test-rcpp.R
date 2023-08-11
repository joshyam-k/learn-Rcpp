library(Rcpp)

Rcpp::evalCpp("2 + 2")

set.seed(42)
Rcpp::evalCpp("Rcpp::rnorm(2)")

cppFunction("
    int exampleCpp11() {
        auto x = 10;
        return x;
}", plugins = c("cpp11"))

exampleCpp11()

cppFunction("
    int f(int a, int b) {
      return(a + b);
    }
")

# seems like it works but there's automatic type casting that you need to be careful with
f(21, 21)

# safer when we provide ints
f(21L, 21L)

# hidden behavior when we provide doubles with decimals
f(20.5, 20.5)


