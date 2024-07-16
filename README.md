# Worker Data Generation and Management in R

This project contains R functions to generate a list of worker details, it update specific attributes of workers, and print out their information. 

## Functions

### `generate_workers()`

Generates a list of workers with randomly assigned attributes:
- Name
- Email
- Phone Number
- Worker ID
- Gender
- Employment Level
- Salary
- Department
- Job Title

### `update_worker_details(workers)`

Updates the employment level of workers based on their salary and gender.

### `print_workers(workers)`

Prints the details of each worker in a readable format.

### `main()`

Main function to execute the generation, updating, and printing of workers.

## Usage Instructions

### Prerequisites

I ensure that R was well installed on my system. You can download and install R from [CRAN](https://cran.r-project.org/).

### Running the Code

1. Save the R code in a file named `worker_management.R`.
2. Open the R console or any R IDE (like RStudio).
3. Set the working directory to the location of `worker_management.R` file using `setwd("path/to/directory")`.
4. Source the R file to load the functions into the environment:

    ```R
    source("worker_management.R")
    ```

5. Run the `main` function to generate, update, and print the workers:

    ```R
    main()
    ```

### Example Output

The output will be printed in the console, displaying the details of each worker. An example output might look like:


