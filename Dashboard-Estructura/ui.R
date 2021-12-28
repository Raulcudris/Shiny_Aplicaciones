
library(shiny)
library(shinydashboard)

ui<-dashboardPage(title = "Dashboard",skin = "green", 
    
    dashboardHeader(title = "Dashboard Ejemplo",
                    
                    # menus de mensajes
                    dropdownMenu(type = "messages",
                                 messageItem(
                                     from = "Sa",
                                     message = "Sales are steady this month."
                                 ),
                                 messageItem(
                                     from = "New User",
                                     message = "How do I register?",
                                     icon = icon("question"),
                                     time = "13:45"
                                 ),
                                 messageItem(
                                     from = "Support",
                                     message = "The new server is ready.",
                                     icon = icon("life-ring"),
                                     time = "2014-12-01"
                                 )
                    ), 
                    # menus de Notificaciones
                    dropdownMenu(type = "notifications", icon = icon("bars"),
                                 notificationItem(
                                     text = "5 new users today",
                                     icon("users")
                                 ),
                                 notificationItem(
                                     text = "12 items delivered",
                                     icon("truck"),
                                     status = "success"
                                 ),
                                 notificationItem(
                                     text = "Server load at 86%",
                                     icon = icon("exclamation-triangle"),
                                     status = "warning"
                                 )
                    ),
                    
                    # menus de Tareas
                    dropdownMenu(type = "tasks", badgeStatus = "success",
                                 taskItem(value = 90, color = "green",
                                          "Documentation"
                                 ),
                                 taskItem(value = 17, color = "aqua",
                                          "Project X"
                                 ),
                                 taskItem(value = 75, color = "yellow",
                                          "Server deployment"
                                 ),
                                 taskItem(value = 80, color = "red",
                                          "Overall project"
                                 )
                    )
    ),
    dashboardSidebar(
        sidebarMenu(
            menuItem("Dashboard", tabName = "dashboard", icon = icon("dashboard")),
            menuItem("Widgets", tabName = "widgets", icon = icon("th"))
        )
    ),
    
    dashboardBody(
        tabItems(
            # First tab content
            tabItem(tabName = "dashboard",
                    fluidRow(
                        box(plotOutput("plot1", height = 250)),
                        
                        box(
                            title = "Controls",
                            sliderInput("slider", "Number of observations:", 1, 100, 50)
                        )
                    )
            ),
            
            # Second tab content
            
            tabItem(tabName = "widgets",
                    h2("Widgets tab content")
            )
        )
    )
    
)