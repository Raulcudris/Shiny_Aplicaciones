
library(shiny)
library(shinydashboard)

ui<- dashboardPage( title="Dashboard Example",
                    skin ="blue",
                    dashboardHeader(title = "Titulo de Proyecto",
                                    dropdownMenu( type = "messages",
                                                  messageItem(from = "Raul","Hola a Todos"),
                                                  messageItem(from = "Racs","Graduacion de Rafa")
                                                ),
                                    dropdownMenu(type = "notifications",
                                                 notificationItem(text = "No te olvides de la cena"),
                                                 notificationItem(text = "Saludos")
                                                ),
                                    dropdownMenu(type = "tasks",
                                                 taskItem(value = 50,
                                                          text = "Avance en la maquetacion de dashboard",
                                                         color= "blue"),
                                                 taskItem(value = 0,
                                                          text =  "Avance en dashboardsidebar",
                                                          color = "red"
                                                            )
                                                 )
                                      ),
                    dashboardSidebar(
                      sidebarSearchForm("searchText","buttonSearch","Buscar",icon = shiny::icon("search")),
                      sidebarMenu(id="sidebarID",
                                  menuItem("Primera ventana"),
                                  menuSubItem("Primera sub-ventana")
                                 )
                      ),
                    dashboardBody()
)

