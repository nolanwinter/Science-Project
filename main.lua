--THIS LOADS THE OTHER TWO SCREENS
timeTester = require( "TimeTester" )
showResults = require( "ShowResults" )

--THIS SETS THE PAUSE BEFORE EACH IMAGE APPEARS
-- AS WELL AS WHAT IMAGE TO DISPLAY
sequence = {
  {
    {duration = 2, isCar = true},
    {duration = 7, isCar = false},
    {duration = 4, isCar = true},
    {duration = 6, isCar = true},
    {duration = 3, isCar = false},
    {duration = 3, isCar = false},
    {duration = 7, isCar = true},
    {duration = 5, isCar = true},
    {duration = 4, isCar = false},
    {duration = 3, isCar = true}
  },
  --Radio
  {
    {duration = 3, isCar = false},
    {duration = 5, isCar = true},
    {duration = 2, isCar = true},
    {duration = 6, isCar = false},
    {duration = 3, isCar = true},
    {duration = 2, isCar = false},
    {duration = 7, isCar = true},
    {duration = 6, isCar = true},
    {duration = 4, isCar = true},
    {duration = 3, isCar = false}
  },
  --2 peeps talking
  {
    {duration = 6, isCar = true},
    {duration = 4, isCar = true},
    {duration = 9, isCar = false},
    {duration = 4, isCar = true},
    {duration = 3, isCar = false},
    {duration = 8, isCar = true},
    {duration = 4, isCar = false},
    {duration = 8, isCar = false},
    {duration = 3, isCar = true},
    {duration = 2, isCar = true}
  },
  --Talking to person
  {
    {duration = 4, isCar = true},
    {duration = 6, isCar = false},
    {duration = 8, isCar = true},
    {duration = 5, isCar = true},
    {duration = 3, isCar = false},
    {duration = 6, isCar = false},
    {duration = 7, isCar = false},
    {duration = 2, isCar = true},
    {duration = 8, isCar = true},
    {duration = 2, isCar = true}
  }
}
  

--THIS OPENS THE NEXT SCREEN(THE MAIN SCREEN)
timeTester.open()