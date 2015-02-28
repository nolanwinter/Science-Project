t = {}

displayNumber = 1
roundNumber = 1

function t.open()
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

function starttimer()
  starttime = system.getTimer()
end
function whereToGo()
  gas:removeEventListener( "tap", whereToGo )
  print("TESTINGA")
  if displayNumber == 10 then
    if roundNumber == 4 then
      showResults.open()
      group:removeSelf()
    else
    displayNumber = 1
    roundNumber = (roundNumber + 1)
    end
  elseif displayNumber < 10 then
    appear:removeSelf()
    print( "appear1rmve" )
    timer1 = timer.performWithDelay( (sequence[roundNumber][displayNumber].duration * 1000), nextImage )
  end
end
function nextImage()
  print( roundNumber, displayNumber )
  print( sequence[1][2].isCar )
  if sequence[roundNumber][displayNumber].isCar == true then
    gas:addEventListener( "tap", whereToGo )
    appear = display.newImage( group, "FullCar.png" )
    print( "appear1" )
  else
    brake:addEventListener( "tap", endtimer )
    appear = display.newImage( group, "walkingPerson.png" )
    print( "appear2" )
    starttimer()
  end
  appear.x = 812; appear.y = 120
  displayNumber = (displayNumber + 1)
end
--function carappear()
--brake:addEventListener( "tap", endtimer )
--car = display.newImage( group, "FullCar.png" )
--print( car )
--car.x = 812; car.y = 120
--displayNumber = (displayNumber + 1)
--starttimer()
--end
function endtimer()
  brake:removeEventListener( "tap", endtimer )
  endtime = system.getTimer()
  resultValue = ((endtime - starttime)/1000)
  results[resultCount] = resultValue
  print("TESTINGB")
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
    appear:removeSelf()
    print( "appear2remve" )
    print("REMOVEDCAR")
    timer1 = timer.performWithDelay( (sequence[roundNumber][displayNumber].duration * 1000), nextImage )
  end
  resultCount = (resultCount + 1 )
end 

timer1 = timer.performWithDelay( sequence[roundNumber][displayNumber].duration, nextImage )
end

return t