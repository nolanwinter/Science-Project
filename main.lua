timeTester = require( "TimeTester" )
showResults = require( "ShowResults" )

local sequence = {
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
    {
  },
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
  
for i = 1,4 do
  print( sequence[2][i].duration )
  print( sequence[2][i].isCar )
end

timeTester.open()