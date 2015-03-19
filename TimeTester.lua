t = {}

--THIS SETS BOTH displayNumber
--AND roundNumber TO 1
displayNumber = 1
roundNumber = 1

function t.open()
  --THIS CREATES A GROUP WHICH BASICALLY
  -- GROUPS IMAGES TOGETHER TO BE REMOVED AT THE SAME TIME.
local group = display.newGroup()
--THIS SETS resultCount TO 1 AND
--CREATES A TABLE CALLED results
resultCount = 1
results = {}
--THESE NEXT 10 LINES DISPLAY THE BACKGROUND AND THE PEDALS,
--AND SETS WHERE THEY ARE DISPLAYED.
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

--THIS CREATES A FUNCTION THAT WHEN
--IT IS CALLED, IT SETS THE VARIABLE starttime
--TO EQUAL HOW LONG THE PROGRAM HAS BEEN RUNNING
function starttimer()
  starttime = system.getTimer()
end

--THIS CREATES A FUNCTION THAT WHEN IT IS
--CALLED, IT REMOVES THE TEXT AND TEXTBOX
--ON THE SCREEN, SETS displayNumber to 1,
--SETS roundNumber TO ONE MORE THAN IT ORIGINALLY
--WAS, AND CALLS THE FUNCTION nextImage AFTER A CERTAIN AMOUNT OF TIME.
function nextRound()
  text:removeSelf()
  textBox:removeSelf()
  displayNumber = 0
  roundNumber = (roundNumber + 1)
  displayNumber = (displayNumber + 1)
  timer1 = timer.performWithDelay( (sequence[roundNumber][displayNumber].duration * 1000), nextImage )
end

--THIS CREATES A FUNCTION THAT WHEN IT
--GETS CALLED, IT REMOVES THE EVENT
--LISTENER ON THE GAS PEDAL, AND CALLS
--THE FUNCTION whatToDoNext
function whereToGo()
  gas:removeEventListener( "tap", whereToGo )
  whatToDoNext()
end

--THIS CREATES A FUNCTION THAT WHEN IT GETS
--CALLED, IT REMOVES EITHER THE CAR OR THE PERSON
--AND TESTS WHERE TO GO
function whatToDoNext()
  appear:removeSelf()
  if displayNumber == 10 then
    if roundNumber == 4 then
      --THIS OPENS THE RESULTS SCREEN
      showResults.open()
      group:removeSelf()
    else
      --THIS STARTS THE NEXT ROUND
      textBox = display.newRect( 512, 384, 500, 200 )
      text = display.newText( "End of Round... Next Round Starts in 5 Seconds...", 512, 384, 500, 200, "Arial", 60 )
      text:setTextColor( 0, 0, 0 )
      timer2 = timer.performWithDelay( 5000, nextRound )
    end
  else
    --THIS DISPLAYS THE NEXT IMAGE (EITHER A CAR OR A PERSON)
    displayNumber = (displayNumber + 1)
    timer1 = timer.performWithDelay( (sequence[roundNumber][displayNumber].duration * 1000), nextImage )
  end
end

--THIS CREATES A FUNCTION THAT WHEN IT GETS
--CALLED, IT DISPLAYS EITHER THE CAR OR THE
--PERSON AND ADDS AN EVENT LISTENER
function nextImage()
  if sequence[roundNumber][displayNumber].isCar == true then
    gas:addEventListener( "tap", whereToGo )
    appear = display.newImage( group, "FullCar.png" )
  else
    brake:addEventListener( "tap", endtimer )
    appear = display.newImage( group, "walkingPerson.png" )
    appear.width = 150; appear.height = 250
    starttimer()
  end
  appear.x = 812; appear.y = 120
end

--THIS CREATES A FUNCTION THAT WHEN IT GETS
--CALLED, IT RECORDS HOW LONG THE TIMER HAS BEEN RUNNING
--AND CALLS whatToDoNext
function endtimer()
  brake:removeEventListener( "tap", endtimer )
  endtime = system.getTimer()
  resultValue = ((endtime - starttime)/1000)
  results[resultCount] = resultValue
  resultCount = (resultCount + 1 )
  whatToDoNext()
end 

--THIS CREATES A TIMER THAT CALLS nextImage AFTER A DELAY
timer1 = timer.performWithDelay( sequence[roundNumber][displayNumber].duration * 1000, nextImage )
end

return t