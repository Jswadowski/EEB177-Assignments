week 8 lab hw
================
Jeremy Wadowski
March 1, 2017

``` r
#http://tutorials.iq.harvard.edu/R/Rgraphics/Rgraphics.html#org93999d8
housing <- read.csv("/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-8/Rgraphics/dataSets/landdata-states.csv")
head(housing[1:5])
```

    ##   State region    Date Home.Value Structure.Cost
    ## 1    AK   West 2010.25     224952         160599
    ## 2    AK   West 2010.50     225511         160252
    ## 3    AK   West 2009.75     225820         163791
    ## 4    AK   West 2010.00     224994         161787
    ## 5    AK   West 2008.00     234590         155400
    ## 6    AK   West 2008.25     233714         157458

``` r
#Base graphics histogram example
hist(housing$Home.Value)
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-1-1.png) \#\# ggplot2 histogram example

``` r
library(ggplot2)
ggplot(housing, aes(x = Home.Value)) + geom_histogram()
```

    ## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-2-1.png) \#\# Base colored scatter plot example

``` r
plot(Home.Value ~ Date,
     data=subset(housing, State == "MA"))
points(Home.Value ~ Date, col="red",
       data=subset(housing, State == "TX"))
legend(1975, 400000,
       c("MA", "TX"), title="State",
       col=c("black", "red"),
       pch=c(1, 1))
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-3-1.png) \#\# ggplot2 colored scatter plot example

``` r
ggplot(subset(housing, State %in% c("MA", "TX")),
       aes(x=Date,
           y=Home.Value,
           color=State))+
  geom_point()
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-4-1.png) \# Geometric Objects and Aesthetic

``` r
hp2001Q1 <- subset(housing, Date == 2001.25) 
ggplot(hp2001Q1,
       aes(y = Structure.Cost, x = Land.Value)) +
  geom_point()
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-5-1.png)

``` r
hp2001Q1$pred.SC <- predict(lm(Structure.Cost ~ log(Land.Value), data = hp2001Q1))

p1 <- ggplot(hp2001Q1, aes(x = log(Land.Value), y = Structure.Cost))

p1 + geom_point(aes(color = Home.Value)) +
  geom_line(aes(y = pred.SC))
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-5-2.png)

``` r
p1 +
  geom_point(aes(color = Home.Value)) +
  geom_smooth()
```

    ## `geom_smooth()` using method = 'loess'

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-5-3.png)

``` r
p1 + 
  geom_text(aes(label=State), size = 3)
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-5-4.png)

``` r
#install.packages("ggrepel") 
library("ggrepel")
p1 + 
  geom_point() + 
  geom_text_repel(aes(label=State), size = 3)
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-5-5.png)

``` r
p1 +
  geom_point(aes(size = 2),# incorrect! 2 is not a variable
             color="red") # this is fine -- all points red
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-5-6.png)

``` r
p1 +
  geom_point(aes(color=Home.Value, shape = region))
```

    ## Warning: Removed 1 rows containing missing values (geom_point).

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-5-7.png) \# Exercise 1

``` r
dat <- read.csv("/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-8/Rgraphics/dataSets/EconomistData.csv")
head(dat)
```

    ##   X     Country HDI.Rank   HDI CPI            Region
    ## 1 1 Afghanistan      172 0.398 1.5      Asia Pacific
    ## 2 2     Albania       70 0.739 3.1 East EU Cemt Asia
    ## 3 3     Algeria       96 0.698 2.9              MENA
    ## 4 4      Angola      148 0.486 2.0               SSA
    ## 5 5   Argentina       45 0.797 3.0          Americas
    ## 6 6     Armenia       86 0.716 2.6 East EU Cemt Asia

``` r
ggplot(dat, aes(x = CPI, y = HDI, size = HDI.Rank)) + geom_point()
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-6-1.png)

``` r
ggplot(dat, aes(x = CPI, y = HDI)) + geom_point()
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-6-2.png)

``` r
ggplot(dat, aes(x = CPI, y = HDI), color="blue") + geom_point()
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-6-3.png)

``` r
ggplot(dat, aes(x = CPI, y = HDI, size = HDI.Rank, color=Region)) + geom_point()
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-6-4.png) \# Setting Statistical Transformation Arguments

``` r
args(geom_histogram)
```

    ## function (mapping = NULL, data = NULL, stat = "bin", position = "stack", 
    ##     ..., binwidth = NULL, bins = NULL, na.rm = FALSE, show.legend = NA, 
    ##     inherit.aes = TRUE) 
    ## NULL

``` r
args(stat_bin)
```

    ## function (mapping = NULL, data = NULL, geom = "bar", position = "stack", 
    ##     ..., binwidth = NULL, bins = NULL, center = NULL, boundary = NULL, 
    ##     breaks = NULL, closed = c("right", "left"), pad = FALSE, 
    ##     na.rm = FALSE, show.legend = NA, inherit.aes = TRUE) 
    ## NULL

``` r
p2 <- ggplot(housing, aes(x = Home.Value))
p2 + geom_histogram()
```

    ## `stat_bin()` using `bins = 30`. Pick better value with `binwidth`.

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-7-1.png)

``` r
#with changed bin value
p2 + geom_histogram(stat = "bin", binwidth=4000)
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-7-2.png)

``` r
#Changing the Statistical Transformation
housing.sum <- aggregate(housing["Home.Value"], housing["State"], FUN=mean)
rbind(head(housing.sum), tail(housing.sum))
```

    ##    State Home.Value
    ## 1     AK  147385.14
    ## 2     AL   92545.22
    ## 3     AR   82076.84
    ## 4     AZ  140755.59
    ## 5     CA  282808.08
    ## 6     CO  158175.99
    ## 46    VA  155391.44
    ## 47    VT  132394.60
    ## 48    WA  178522.58
    ## 49    WI  108359.45
    ## 50    WV   77161.71
    ## 51    WY  122897.25

``` r
#Doesn't work because we are asking ggplot to bin and summarize already binned and summarized data
#ggplot(housing.sum, aes(x=State, y=Home.Value)) + geom_bar()
#instead:
ggplot(housing.sum, aes(x=State, y=Home.Value)) + 
  geom_bar(stat="identity")
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-7-3.png) \# Exercise 2

``` r
dat <- read.csv("/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-8/Rgraphics/dataSets/EconomistData.csv")
head(dat)
```

    ##   X     Country HDI.Rank   HDI CPI            Region
    ## 1 1 Afghanistan      172 0.398 1.5      Asia Pacific
    ## 2 2     Albania       70 0.739 3.1 East EU Cemt Asia
    ## 3 3     Algeria       96 0.698 2.9              MENA
    ## 4 4      Angola      148 0.486 2.0               SSA
    ## 5 5   Argentina       45 0.797 3.0          Americas
    ## 6 6     Armenia       86 0.716 2.6 East EU Cemt Asia

``` r
ggplot(dat, aes(x = CPI, y = HDI))+ geom_point()
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-8-1.png)

``` r
ggplot(dat, aes(x = CPI, y = HDI))+ geom_point() + geom_smooth()
```

    ## `geom_smooth()` using method = 'loess'

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-8-2.png)

``` r
c(method="lm")
```

    ## method 
    ##   "lm"

``` r
ggplot(dat, aes(x = CPI, y = HDI))+ geom_point() + geom_line(stat="identity")
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-8-3.png)

``` r
ggplot(dat, aes(x = CPI, y = HDI))+ geom_point() + geom_smooth(span = .2)
```

    ## `geom_smooth()` using method = 'loess'

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-8-4.png) \#\# Scale Modification Examples

``` r
p3 <- ggplot(housing,
             aes(x = State,
                 y = Home.Price.Index)) + 
        theme(legend.position="top",
              axis.text=element_text(size = 6))
(p4 <- p3 + geom_point(aes(color = Date),
                       alpha = 0.5,
                       size = 1.5,
                       position = position_jitter(width = 0.25, height = 0)))
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-9-1.png)

``` r
p4 + scale_x_discrete(name="State Abbreviation") +
  scale_color_continuous(name="",
                         breaks = c(1976, 1994, 2013),
                         labels = c("'76", "'94", "'13"))
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-9-2.png)

``` r
p4 +
  scale_x_discrete(name="State Abbreviation") +
  scale_color_continuous(name="",
                         breaks = c(1976, 1994, 2013),
                         labels = c("'76", "'94", "'13"),
                         low = "blue", high = "red")
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-9-3.png)

``` r
#p4 +
  #scale_color_continuous(name="",
                         #breaks = c(1976, 1994, 2013),
                         #labels = c("'76", "'94", "'13"),
                         #low = muted("blue"), high = muted("red"))  #does not work with current package, requires scale package

#midpoint and different color scales
p4 +
  scale_color_gradient2(name="",
                        breaks = c(1976, 1994, 2013),
                        labels = c("'76", "'94", "'13"),
                        low = ("blue"),
                        high = ("red"),
                        mid = "gray60",
                        midpoint = 1994)
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-9-4.png) \#\# Exercise 3

``` r
dat <- read.csv("/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-8/Rgraphics/dataSets/EconomistData.csv")

ggplot(dat, aes(x = CPI, y = HDI, color = "Region")) +
    geom_point()
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-10-1.png)

``` r
  ggplot(dat, aes(x = CPI, y = HDI, color = "Region")) +
  geom_point() +
  scale_x_continuous(name = "Corruption Perception Index") +
  scale_y_continuous(name = "Human Development Index") +
  scale_color_discrete(name = "World Regions")
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-10-2.png)

``` r
 ggplot(dat, aes(x = CPI, y = HDI, color = "Region")) +
  geom_point() +
  scale_x_continuous(name = "Corruption Perception Index") +
  scale_y_continuous(name = "Human Development Index") +
    scale_color_manual(name = "Region of the world",
                       values = c("#24576D",
                                  "#099DD7",
                                  "#28AADC",
                                  "#248E84",
                                  "#F2583F",
                                  "#96503F")) #no different colors?? 
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-10-3.png) \#\# Faceting

``` r
p5 <- ggplot(housing, aes(x = Date, y = Home.Value))
p5 + geom_line(aes(color = State)) #produces obscure lines
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-11-1.png)

``` r
(p5 <- p5 + geom_line() +
   facet_wrap(~State, ncol = 10))
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-11-2.png) \#\# Themes

``` r
p5 + theme_linedraw()
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-12-1.png)

``` r
p5 + theme_light()
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-12-2.png)

``` r
p5 + theme_minimal() +
  theme(text = element_text(color = "turquoise"))
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-12-3.png)

``` r
#creating new themes
theme_new <- theme_bw() +
  theme(plot.background = element_rect(size = 1, color = "blue", fill = "black"),
        text=element_text(size = 12, family = "Serif", color = "ivory"),
        axis.text.y = element_text(colour = "purple"),
        axis.text.x = element_text(colour = "red"),
        panel.background = element_rect(fill = "pink"),
        strip.background = element_rect(fill = ("orange")))

p5 + theme_new
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-12-4.png) \#\# Best way to plot a data.frame of two variables as separate points with different colors?

``` r
#not this way:
library(tidyr)
housing.byyear <- aggregate(cbind(Home.Value, Land.Value) ~ Date, data = housing, mean)
ggplot(housing.byyear,
       aes(x=Date)) +
  geom_line(aes(y=Home.Value), color="red") +
  geom_line(aes(y=Land.Value), color="blue")
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-13-1.png)

``` r
#but this way:
home.land.byyear <- gather(housing.byyear,
                           value = "value",
                           key = "type",
                           Home.Value, Land.Value)
ggplot(home.land.byyear,
       aes(x=Date,
           y=value,
           color=type)) +
  geom_line()
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-13-2.png) \# Putting It All Together: Recreate Economist Graph

``` r
dat <- read.csv("/home/eeb177-student/Desktop/eeb-177/lab-work/exercise-8/Rgraphics/dataSets/EconomistData.csv")

first <- ggplot(dat, aes(x = CPI, y = HDI, color = Region))
first + geom_point()
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-14-1.png)

``` r
(second <- first + geom_smooth(aes(group = 1), method = "lm", formula = y ~ log(x), se = FALSE, color = "red")) + geom_point()
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-14-2.png)

``` r
(third <- second + geom_point(size = 1, shape = 1) + geom_point(size = 1, shape = 1) + geom_point(size = 1, shape = 1))
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-14-3.png)

``` r
labeled_countries <- c("Congo", "Afghanistan", "Sudan", "Myanmar", "Iraq", "India", "Rwanda", "South Africa", "China", "Venezuela", "Russia", "Argentina", "Greece", "Brazil", "Italy", "Bhutan", "Cape Verde", "Botswana", "Spain", "France", "US", "Britain", "Barbados", "Japan", "Germany", "Norway", "Singapore", "New Zealand")

dat$Country <- as.character(dat$Country)
as.character(dat$Country) %in% labeled_countries
```

    ##   [1]  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE
    ##  [12] FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE  TRUE  TRUE
    ##  [23] FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE
    ##  [34] FALSE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
    ##  [45] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
    ##  [56]  TRUE FALSE FALSE FALSE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE
    ##  [67] FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE  TRUE FALSE FALSE
    ##  [78]  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
    ##  [89] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
    ## [100] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE
    ## [111] FALSE FALSE FALSE  TRUE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
    ## [122] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE  TRUE FALSE
    ## [133] FALSE FALSE FALSE FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE
    ## [144]  TRUE  TRUE FALSE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
    ## [155] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
    ## [166] FALSE FALSE FALSE FALSE  TRUE FALSE FALSE FALSE

``` r
country_to_print <- character(nrow(dat))
printrows <- which(as.character(dat$Country) %in% labeled_countries) 
#country_to_print[printrows] <- #dat$Country[printrows]

library("ggrepel")
(fourth <- third + geom_text_repel(aes(label = Country), color = "black", data = subset(dat, Country%in%labeled_countries), force = 6))
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-14-4.png)

``` r
library(grid)
(fifth <- fourth + ggtitle("Corruption and human development") + scale_x_continuous(name = "Corruption Perceptions Index, 2011 (10=least corrupt)", limits = c(.9, 10.5), breaks = 1:10) + scale_y_continuous(name = "Human Development Index, 2011 (1=Best)", limits = c(0.2, 1.0), breaks = seq(0.2, 1.0, by = 0.1)))
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-14-5.png)

``` r
(sixth <- fifth + theme_minimal() + theme(text = element_text(color = "black"), legend.position = c("top"), legend.direction = "horizontal", legend.justification = 0.25, legend.text = element_text(size = 8, color = "black"), axis.text = element_text(face = "italic", size = 5), axis.ticks.y = element_blank(), axis.line = element_line(color = "black", size = 0.4),axis.line.y =element_blank(), panel.grid.major = element_line(color = "black", size = 0.4),panel.grid.major.x = element_blank()))
```

![](week_8_lab_hw_files/figure-markdown_github/unnamed-chunk-14-6.png)
