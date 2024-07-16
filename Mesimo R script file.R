generate_workers <- function() {
  workers <- list()
  for (num in 1:400) {
    tryCatch({
      name <- sample(c("titi tijani", "olayinka adeliyi", "silas umunu"), 1)
      email <- paste0(gsub(" ", "", name), "@gmail.com")
      phone <- sprintf("%010d", sample(1000000000:9999999999, 1))
      worker_id <- num
      gender <- sample(c("female", "male"), 1)
      employment_level <- NA
      salary <- sample(2000:100000, 1)
      department <- sample(c("SALES", "MARKETING", "CUSTOMER EXPERIENCE", "OPERATIONS"), 1)
      job_title <- sample(c("sales manager", "consultant", "operations head"), 1)
      
      worker <- list(worker_id, name, email, phone, gender, employment_level, salary, department, job_title)
      workers[[length(workers) + 1]] <- worker
    }, error = function(e) {
      message(sprintf("Error while generating worker %d: %s", num, e$message))
    })
  }
  return(workers)
}

update_worker_details <- function(workers) {
  for (i in seq_along(workers)) {
    tryCatch({
      salary <- workers[[i]][[7]]
      if (10000 < salary && salary < 20000) {
        workers[[i]][[6]] <- 'A1'
      } else if (7500 < salary && salary < 30000 && workers[[i]][[5]] == 'female') {
        workers[[i]][[6]] <- 'A5-F'
      }
    }, error = function(e) {
      message(sprintf("Error while assigning employment level to worker %d: %s", workers[[i]][[1]], e$message))
    })
  }
}

print_workers <- function(workers) {
  for (worker in workers) {
    cat(sprintf("Worker ID: %d,\n", worker[[1]]),
        sprintf("Name: %s,\n", worker[[2]]),
        sprintf("Email: %s,\n", worker[[3]]),
        sprintf("Phone: %s,\n", worker[[4]]),
        sprintf("Gender: %s,\n", worker[[5]]),
        sprintf("Employment Level: %s,\n", ifelse(is.na(worker[[6]]), "N/A", worker[[6]])),
        sprintf("Department: %s,\n", worker[[8]]),
        sprintf("Job Title: %s,\n", worker[[9]]),
        sprintf("Salary: $%0.2f\n\n", worker[[7]]))
  }
}

main <- function() {
  workers <- tryCatch({
    generate_workers()
  }, error = function(e) {
    message(sprintf("Error while generating workers: %s", e$message))
    return(NULL)
  })
  
  if (!is.null(workers)) {
    tryCatch({
      update_worker_details(workers)
    }, error = function(e) {
      message(sprintf("Error while updating workers: %s", e$message))
    })
    
    tryCatch({
      print_workers(workers)
    }, error = function(e) {
      message(sprintf("Error while printing workers: %s", e$message))
    })
  }
}

main()

