---
title       : Illustration of App
subtitle    : temperature_conversion illustration
author      : Jianling Peng 
job         : 
framework   : io2012        # {io2012, html5slides, shower, dzslides, ...}
highlighter : highlight.js  # {highlight.js, prettify, highlight}
hitheme     : tomorrow      # 
widgets     : [mathjax, quiz, bootstrap, interactive, shiny] # {mathjax, quiz, bootstrap}
mode        : selfcontained # {standalone, draft}
knit        : slidify::knit2slides
--- 

## Conversion between Fahrenheitand and Celsius

1. There are two different units Fahrenheitand and Celsius to measure temperature
2. Peope may use different units for temperature
3. It's useful to provide a tool to do the conversion between Fahrenheitand and Celsius
4. This temperature_conversion App will make the conversion between Fahrenheitand and Celsius

--- 

## Formulas for the temperature conversion
* From Fahrenheit to Celsius Conversion

$$C = (F-32)\times\frac{5}{9}$$

* From Celsius to Fahrenheit Conversion

$$F = \frac{9}{5}\times{C} + 32$$

---

## Steps to use the temperature_conversion app
  
1. Choose the conversion types, which contains two options: "Fahrenheit to Celsius Conversion" and "Celsius to Fahrenheit Conversion", from the radio button controler.
2. Input the temperature value from the pull-down options labeled as "inputvalue".
3. Click the "Submit" button

The converted temperature value will be shown.


--- &interactive
## temperature_conversion

<div class="row-fluid">
  <div class="span4">
    <form class="well">
      <div id="conversion" class="control-group shiny-input-radiogroup">
        <label class="control-label" for="conversion">conversion type</label>
        <label class="radio ">
          <input type="radio" name="conversion" id="conversion1" value="Fahrenheit to Celsius Conversion" checked="checked"/>
          <span>Fahrenheit to Celsius Conversion</span>
        </label>
        <label class="radio ">
          <input type="radio" name="conversion" id="conversion2" value="Celsius to Fahrenheit Conversion"/>
          <span>Celsius to Fahrenheit Conversion</span>
        </label>
      </div>
      <label for="inputvalue">inputvalue</label>
      <input id="inputvalue" type="number" value="98.6" min="-100" max="200" step="0.1"/>
      <div>
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </form>
  </div>
  <div class="span8">
    <h4>You entered</h4>
    <pre id="inputValue" class="shiny-text-output"></pre>
    <h4>Which resulted in a conversion of </h4>
    <pre id="Conversion" class="shiny-text-output"></pre>
  </div>
</div>


