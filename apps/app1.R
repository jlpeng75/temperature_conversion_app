
output$inputValue <- renderPrint({
  input$inputvalue
})
output$Conversion <- renderPrint({
  conversion <- function(x){
    if (input$conversion == "Fahrenheit to Celsius Conversion")
      print((x-32)*5/9)
    if (input$conversion == "Celsius to Fahrenheit Conversion")
      print(x*9/5+32)
  }
  conversion(input$inputvalue)  
})
