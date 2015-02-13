t = {}

function t.open()
 local average = ((results[1] + results[2] + results[3] + results[4] + results[5])/5)
 local try1 = display.newText( results[1], 512, 100, "Arial", 60 )
 local try2 = display.newText( results[2], 512, 200, "Arial", 60 )
 local try3 = display.newText( results[3], 512, 300, "Arial", 60 )
 local try4 = display.newText( results[4], 512, 400, "Arial", 60 )
 local try5 = display.newText( results[5], 512, 500, "Arial", 60 )
 local displayAverage = display.newText(average, 512, 600, "Arial", 60 )
end

return t