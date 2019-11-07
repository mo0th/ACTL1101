# load `dplyr`
library('dplyr')

# load dataset
data(mtcars)

kmIn1Mile = 1.60934

mtcars %>%
  # create the `kmpg` column
  mutate(kmpg = mpg * kmIn1Mile) %>%
  # group the cars by the number of cylinders
  group_by(cyl) %>%
  # create a summary table showing the number of cars, mean kmpg
  # and standard deviation
  summarise(
    count = n(),
    mean_kmpg = mean(kmpg),
    sd_kmpg = sd(kmpg)
  )