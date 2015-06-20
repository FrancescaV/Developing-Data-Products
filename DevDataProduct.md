Find Your Movie for Tonight!
========================================================
author: Francesca
date: 06/20/2015

The Question: What Do We Watch Tonight? 
========================================================

- How many times did you open Netflix and wasted one hour browsing for a movie (OK, I don't have a TV so I might be biased on this one..)?

- How many times, after you found a movie that sounded promising, that movie turned out to have a record-low IMDB score (a.k.a. you would be better off doing something else)?

If the answer to any of the above is "many!", then you might find what follows interesting.

The Data: The "Movie" Database 
========================================================

- Among the many R datasets there is one called "movies":

```r
library(ggplot2);data(movies)
```
- In the "movies" database you can find, e.g.:

```r
head(names(movies))
```

```
[1] "title"  "year"   "length" "budget" "rating" "votes" 
```
- I developed an easy-to-use application that uses this database.

The App: Find Your Movie for Tonight!
========================================================

- Go to this website: https://francescav.shinyapps.io/Project

- Select the genre(s) of the movie you would like to watch

- Click submit

- The website will search the "movies" database for the 3 movies with the highest IMDB rating matching your preferences


 Improvements
========================================================
Of course I did not re-invent the wheel and all this already exists in a way-more-advanced-form on the actual IMDB website (http://www.imdb.com/). However, I enjoyed the project and learned something new =). The simple algorithm I have implemented can be improved as follows:

- Having the movies appearing in a list, as opposed to one after the other one on the same line

- Adding more information about the movies, such as actors and year

- Adding more selection options, such as year or length

- More improvements to think about!

