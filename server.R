library(shiny)
library(dplyr)
library(ggplot2)
data(movies)

selectMovie <- function(Animation, Comedy, Drama, Documentary, Romance){
    
    if(Animation == TRUE){AnimationFlag <- 1}
    else{AnimationFlag <- 0}

    if(Comedy == TRUE){ComedyFlag <- 1}
    else{ComedyFlag <- 0}

    if(Drama == TRUE){DramaFlag <- 1}
    else{DramaFlag <- 0}

    if(Documentary == TRUE){DocumentaryFlag <- 1}
    else{DocumentaryFlag <- 0}

    if(Romance == TRUE){RomanceFlag <- 1}
    else{RomanceFlag <- 0}

    #select movies according to flags above
    movieSubset <- movies[movies$Animation == AnimationFlag & movies$Comedy == ComedyFlag
     & movies$Drama == DramaFlag & movies$Documentary == DocumentaryFlag & movies$Romance == RomanceFlag, ]
    
    if (AnimationFlag == 0 & ComedyFlag == 0 & DramaFlag == 0 & DocumentaryFlag == 0 & RomanceFlag == 0)
    {
        #if no flags where selected, then I consider the whole database
        movieSubset <- movies
    }
    #order movies by rating
    movieSubsetArranged <- arrange(movieSubset, desc(rating))
    
    top3 <- c("[1]", as.character(movieSubsetArranged[1,1]), "(IMDB:", movieSubsetArranged[1,5], ")",
    ", [2]", movieSubsetArranged[2,1], "(IMDB:", movieSubsetArranged[2,5], ")",
    ", [3]", movieSubsetArranged[3,1], "(IMDB:", movieSubsetArranged[3,5], ")")

    print(top3)
}

shinyServer(

    function(input, output) {
        output$prediction <- renderText({
            selectMovie(input$Animation, input$Comedy, input$Drama, input$Documentary, input$Romance)
        })
    }
)

