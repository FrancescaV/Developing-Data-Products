library(shiny)

shinyUI(pageWithSidebar(

    headerPanel("Find Your Movie for Tonight!"),

    sidebarPanel(
        h3("Pick the Genre(s)"),
        checkboxInput("Animation", label = "Animation", value = FALSE),
        checkboxInput("Comedy", label = "Comedy", value = FALSE),
        checkboxInput("Drama", label = "Drama", value = FALSE),
        checkboxInput("Documentary", label = "Documentary", value = FALSE),
        checkboxInput("Romance", label = "Romance", value = FALSE),
        submitButton('Submit')
    ),

    mainPanel(
        tabsetPanel(
            tabPanel("Documentation",
                p("This website uses the R dataset called ``movies'' to give you movie suggestions! This dataset is based on the Internet Movie Database (IMDB). Here is how it works:"),
                p("- If nothing on the left is selected, I will tell you the 3 best rated movies in alphabetic order;"),
                p("- If you select any of the options on the left, I will tell you the 3 best rated movies that best match your preferences."),
                p("Once you made up your mind on the type of movie you would like to watch just push the ``submit'' button and click on the tab ``Movie Choices''. The IMDB rating is in parenthesis next to each movie."),
                p("Note: if you add too many options you might bump into missing values. Also, I know it would be great to have the movies on different lines but I did not figure out how to do it (yet).")
            ),
            tabPanel("Movie Choices",
                h3('The Top-3 Movies I Found are:'),
                textOutput("prediction"))
        )
    )
))


