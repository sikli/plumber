
#* Say Hello to someone
#* @param x To who do you want to say Hello?
#* @get /hello
function(x){

library(dplyr)

mean_sepal <- iris$Sepal.Length %>% mean

  print(paste("Hello",x,"!!! The mean Sepal Length in the iris data is:",mean_sepal))


  
}
