t = {}

displayNumber = 1
roundNumber = 1

function t.open()
function showreSults()
  showResults.open()
  group:removeSelf()
end
local group = display.newGroup()
--time = math.random( 2000, 7000 )
resultCount = 0
results = {}
local street = display.newImage( group, "Street.png" )
street.x = 512; street.y = 184
street.width = 1024; street.height = 768
local foreground = display.newImage( group, "Car.png" )
foreground.x = 512; foreground.y = 384
foreground.width = 1024; foreground.height = 768
local brake = display.newImage( group, "Pedal.png" )
brake.x = 360; brake.y = 584
local gas = display.newImage( group, "Pedal.png" )
gas.x = 660; gas.y = 584
--REMOVE ME
local person = display.newImage( group, "walkingPerson.png" )
person.x = 660; person.y = 584
person:addEventListener( "tap", showreSults )

function starttimer()
  starttime = system.getTimer()
end
function carappear()
brake:addEventListener( "tap", endtimer )
car = display.newImage( group, "FullCar.png" )
print( car )
car.x = 812; car.y = 120
displayNumber = (displayNumber + 1)
starttimer()
end
function endtimer()
  resultCount = (resultCount + 1 )
  endtime = system.getTimer()
  resultValue = ((endtime - starttime)/1000)
  results[resultCount] = resultValue
  if displayNumber == 10 then
    if roundNumber == 4 then
      showResults.open()
      group:removeSelf()
    else
    displayNumber = 1
    roundNumber = (roundNumber + 1)
    end
  elseif displayNumber < 10 then
    print("A" )
    car:removeSelf()
    print("REMOVEDCAR")
    brake:removeEventListener( "tap", endtimer )
    timer1 = timer.performWithDelay( (sequence[roundNumber][displayNumber].duration * 1000), carappear )
  end
end

timer1 = timer.performWithDelay( sequence[roundNumber][displayNumber].duration, carappear )
end

return t