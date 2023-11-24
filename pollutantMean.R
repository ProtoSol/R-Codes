pollutantmean <- function(directory, pollutant, id = 1:332){
        filelist <- list.files( path = directory, pattern = ".csv", full.names = TRUE)
        values <- numeric(0)
        
        for(i in id){
                data <- read.csv(filelist[i])
                values <- c(values, data[[pollutant]])
        }
        mean(values, na.rm = TRUE)
}