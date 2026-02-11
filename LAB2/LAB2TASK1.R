weight <- as.numeric(readline("Enter your weight (in kg) : "));
height <- as.numeric(readline("Enter your height (in cm) : "));
height_m <- height/100
BMI <- weight / (height_m^2)

if (BMI< 18.5){
  uw <- TRUE;
  n <- FALSE;
  ow <- FALSE;
  ob <- FALSE;
} else if (BMI<25){
  uw <- FALSE;
  n <- TRUE;
  ow <- FALSE;
  ob <- FALSE;
} else if (BMI<40){
  uw <- FALSE;
  n <- FALSE;
  ow <- TRUE;
  ob <- FALSE;
} else{
  uw <- FALSE;
  n <- FALSE;
  ow <- FALSE;
  ob <- TRUE;
}

cat("Underweight: ", uw, "\nNormal: ", n, "\nOverweight: ", ow, "\nObese: ", ob)

