library(shiny)
library(shinydashboard)
library(RODBC)
library(dplyr)
library(DT)
library(readxl)

Datos <- read_excel("C:/Users/MAKIIA-PC03/Desktop/Shiny_Aplicaciones/Deshboard/Datos.xlsx",
                    sheet = "Paise_Dosis")


ui<-dashboardPage(title= "Dashboard", skin= "green",
                  dashboardHeader(title="PROYECTO",
                                  dropdownMenu(type="messages",
                                               messageItem(from="Abner",
                                                           "Hola"),
                                               messageItem(from = "Abner",
                                                           "No te olvides de compartir")
                                  ),
                                  dropdownMenu(type="notifications",
                                               notificationItem(text="Hola...."),
                                               notificationItem(text="Saludos")
                                               
                                  ),
                                  dropdownMenu(type="tasks",
                                               taskItem(value=50,
                                                        text="Avance del dashboardHeader",
                                                        color="blue"),
                                               taskItem(value=10,
                                                        text="Avance del dashboardSidebar",
                                                        color="red")
                                  )
                                  
                  ),
                  dashboardSidebar(
                    sidebarSearchForm("searchText","buttonSearch","Buscar",icon = shiny::icon("search"))
                    ,
                    sidebarMenu(id="sidebarID",
                                menuItem("Ver Base Datos", tabName = "datosbd"),
                                menuSubItem("Primera sub-ventana"),
                                menuItem("Segunda ventana",id = "chartsID",
                                         menuSubItem("Sub-ventana1"),
                                         menuSubItem("Sub-ventana2"),
                                         menuSubItem("Sub-ventana3",icon =icon("apple-pay"))
                                )
                    )
                    
                    
                  ),
                  dashboardBody(
                    
                    tabItem(tabName = "datosbd", 
                            DT::dataTableOutput("datosbd"))
                    
                  )  
)