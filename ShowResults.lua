t = {}

function t.open()
 local practiceAverage = ((results[1] + results[2] + results[3] + results[4] + results[5] + results[6] + results[7] + results[8] + results[9] + results[10])/10)
 local average1 = ((results[11] + results[12] + results[13] + results[14] + results[15] + results[16] + results[17] + results[18] + results[19] + results[20])/10)
 local average2 = ((results[21] + results[22] + results[23] + results[24] + results[25] + results[26] + results[27] + results[28] + results[29] + results[30])/10)
 local average3 = ((results[31] + results[32] + results[33] + results[34] + results[35] + results[36] + results[37] + results[38] + results[39] + results[40])/10)
 local text1 = display.newText( "Practice Round", 512, 100, "Arial", 60 )
 local practice = display.newText( practiceAverage, 512, 200, "Arial", 60 )
 local text2 = display.newText( "First Round", 512, 300, "Arial", 60 )
 local try1 = display.newText( average1, 512, 400, "Arial", 60 )
 
 local try2 = display.newText( average2, 512, 600, "Arial", 60 )
 
 local try3 = display.newText( average3, 512, 800, "Arial", 60 )
end

return t