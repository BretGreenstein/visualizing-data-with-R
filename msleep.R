library(ggplot2)

data(msleep)

### Tasks
# summarize data
# for each category of vore show
# the min, max, difference
# average age, sleep_total
# and arrange the data by average

head(msleep)

# summarize the dataset
summary(msleep)

# summarize the sleep_total
summary(msleep$sleep_total)

msleep %>% 
  select(sleep_total, brainwt) %>%
  summary()

# for each catetory of vore
msleep %>%
  select(name, vore, sleep_total)

msleep %>%
  drop_na(vore) %>%
  group_by(vore) %>%
  summarize(Lower = min(sleep_total),
            Average = mean(sleep_total),
            Upper = max(sleep_total),
            Difference = 
              max(sleep_total) - min(sleep_total)) %>%
  arrange(Average)









