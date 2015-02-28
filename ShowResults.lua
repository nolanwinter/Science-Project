t = {}

function t.open()
 local practiceAverage = ((results[1] + results[2] + results[3] + results[4]/4))
 local average1 = ((results[5] + results[6] + results[7] + results[8]/4))
 local average2 = ((results[9] + results[10] + results[11] + results[12]/4))
 local average3 = ((results[13] + results[14] + results[15] + results[16]/4))
 local text1 = display.newText( "Practice Round", 512, 75, "Arial", 60 )
 local practice = display.newText( practiceAverage, 512, 125, "Arial", 60 )
 local text2 = display.newText( "First Round", 512, 225, "Arial", 60 )
 local try1 = display.newText( average1, 512, 275, "Arial", 60 )
 local text3 = display.newText( "Second Round", 512, 375, "Arial", 60 )
 local try2 = display.newText( average2, 512, 425, "Arial", 60 )
 local text4 = display.newText( "Third Round", 512, 525, "Arial", 60 )
 local try3 = display.newText( average3, 512, 575, "Arial", 60 )
end

return t