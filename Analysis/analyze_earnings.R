library(tidyverse)
library(dplyr)
library(readr)
library(cowplot)
library(infer)
library(repr)
library(digest)
library(gridExtra)
library(broom)

youtube <- read.csv("https://raw.githubusercontent.com/yuwangy/youtube_earning_analysis/main/Global%20YouTube%20Statistics.csv")

head(youtube)

youtube_tidy <- youtube |>
  filter(video.views != 0) |>
  select(Title, video.views, subscribers, highest_yearly_earnings)

# preview data:
head(youtube_tidy)

# Count number of rows of filtered data: 987
nrow(youtube_tidy)

# generate plot: subscribers vs highest yearly earnings
subs_plot <- youtube_tidy |>
  ggplot() +
  geom_line(aes(x = subscribers, y = highest_yearly_earnings)) +
  xlab("number of subscribers") +
  ylab("amount of earnings") +
  ggtitle("relationship between channel subscribers and yearly earnings")

subs_plot

# generate plot: video views vs highest yearly earnings
views_plot <- youtube_tidy |>
  ggplot() +
  geom_line(aes(x = video.views, y = highest_yearly_earnings)) +
  xlab("count of video views") +
  ylab("amount of earnings") +
  ggtitle("relationship between channel video views and yearly earnings")

views_plot


