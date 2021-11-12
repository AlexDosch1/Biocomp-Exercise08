# Challenge 2: Guess my number

# Have R choose a random integer and set as variable
num <- sample(1:100, 1)
guess <- -1
# Prompt user to guess a number
print("Enter a number between 1 and 100:")

# Use if-else function to interpret guess
    # If too high, print "lower"
    # If too low, print "higher"
    # If right, print "correct" 
while(guess !=num | guess < 11)
  { guess <- readline(prompt="Enter number: ")
  if (guess == num){
  cat("Correct!")
} else if (guess < num) {
  cat("Higher")
} else if (guess > num) {
  cat("Lower")
}
} 


