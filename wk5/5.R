# load libraries
library('dplyr')
library('moments')

# Select the `school-profile-2017.csv` file
school_data <- read.csv(file=file.choose())

# ICSEA Information
school_data %>%
  group_by(Geolocation) %>%
  summarise(
    mean = mean(ICSEA, na.rm=TRUE),
    sd = sd(ICSEA, na.rm=TRUE),
    skewness = skewness(ICSEA, na.rm=TRUE)
  )

# Indigenous Enrolment Information
school_data %>%
  # Remove the rows that contain `NA`
  na.omit() %>%
  mutate(
    Indigenous.Percentage = Indigenous.Enrolments / Total.Enrolments * 100,
    Indigenous.Percentage.Interval = cut(
      Indigenous.Percentage,
      breaks=c(0,20,40,60,80,100),
      # Make sure that the lowest value (0) is included
      include.lowest = TRUE,
    )
  ) %>%
  group_by(Indigenous.Percentage.Interval) %>%
  summarise(count = n())

