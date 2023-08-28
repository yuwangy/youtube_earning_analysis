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
  select(Title, video.views, highest_yearly_earnings)
head(youtube_tidy)


