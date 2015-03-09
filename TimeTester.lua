t = {}

--THIS SETS BOTH displayNumber
--AND roundNumber TO 1
displayNumber = 1
roundNumber = 1

function t.open()
local group = display.newGroup()
resultCount = 1
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
print( "HI WORLD")

function starttimer()
  starttime = system.getTimer()
end

function nextRound()
  print("nextround")
  text:removeSelf()
  textBox:removeSelf()
  displayNumber = 0
  roundNumber = (roundNumber + 1)
  displayNumber = (displayNumber + 1)
  timer1 = timer.performWithDelay( (sequence[roundNumber][displayNumber].duration * 1000), nextImage )
end

function whereToGo()
  gas:removeEventListener( "tap", whereToGo )
  print("TESTINGA")
  whatToDoNext()
end

function whatToDoNext()
  appear:removeSelf()
  print(roundNumber, displayNumber)
  if displayNumber == 10 then
    if roundNumber == 4 then
      showResults.open()
      group:removeSelf()
      print("ENDSCREENCALLED")
    else
      --Start Next Round
      textBox = display.newRect( 512, 384, 500, 200 )
      text = display.newText( "End of Round... Next Round Starts in 5 Seconds...", 512, 384, 500, 200, "Arial", 60 )
      text:setTextColor( 0, 0, 0 )
      timer2 = timer.performWithDelay( 5000, nextRound )
    end
  else
    displayNumber = (displayNumber + 1)
    timer1 = timer.performWithDelay( (sequence[roundNumber][displayNumber].duration * 1000), nextImage )
  end
end

print("BYE WORLD")
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
    appear.width = 150; appear.height = 250
    starttimer()
  end
  appear.x = 812; appear.y = 120
end

function endtimer()
  brake:removeEventListener( "tap", endtimer )
  endtime = system.getTimer()
  resultValue = ((endtime - starttime)/1000)
  results[resultCount] = resultValue
  print(resultCount, resultValue)
  resultCount = (resultCount + 1 )
  whatToDoNext()
end 

print( sequence[roundNumber][displayNumber].duration )
timer1 = timer.performWithDelay( sequence[roundNumber][displayNumber].duration * 1000, nextImage )
end

return t