#the helper function

#version 1 with str_extract
evaluate_guess = function(guess, solution){
  #  guess_letters = str_extract_all(guess, boundary("character"))[[1]]
  #  solution_letters = str_extract_all(solution, boundary("character"))[[1]]
  result = c("-", "-", "-", "-", "-")
  for (i in 1:length(guess_letters)){
    for(j in 1:length(solution_letters)){
      if (guess_letters[i] == solution_letters[j]){
        result[i] = "+"
      }
      if (i ==j){
        result[i] = "+"
      }
      else{
        result[i] = "-"
      }
    }
  }
  return(result)
}

#version 2 without str_extract

evaluate_guess = function(guess, solution){
  #  guess_letters = str_extract_all(guess, boundary("character"))[[1]]
  #  solution_letters = str_extract_all(solution, boundary("character"))[[1]]
  result = c("-", "-", "-", "-", "-")
  for (i in 1:length(guess)){
    for(j in 1:length(solution)){
      #      if (guess[i] == solution[j]){
      #      if (i ==j){
      #        result[i] = "*"
      #      }
      #      }
      if (guess[i] %in% solution){
        if(i==j){
          result[i] = "*"
        }
        else{
          result[i] = "+"
        }
      }
      else{
        result[i] = "-"
      }
    }
  }
  return(result)
}

#version 3 - more modifications

evaluate_guess = function(guess, solution){
  result = c("-", "-", "-", "-", "-")
  for (i in 1:length(result)){
    if (guess[i] %in% solution){
      result[i] = "+"
      if((guess[i] == solution[i])){
        result[i] = "*"
      }
    }
    
    #          if (guess[1] == solution[1]){
    #      result[i] = "*"
    #          }
    
    else{
      result[i] = "-"
    }
  }
  return(result)
}
f = evaluate_guess(b, d)
g = c("-", "-", "+", "+", "+")
setdiff(f,g)
identical(f, g)
which(b == d)
identical(b[1],d[1])
a = "chaes"
b = str_extract_all(a, pattern = boundary())[[1]]
c = "chase"
d = str_extract_all(c, pattern = boundary())[[1]]

