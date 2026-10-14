--Welcome to Lua tutorials!

--[[First, lets start with the basics. just print and console basics for VSCode.

To open the terminal, use the keybond Ctrl+(backtick)
To run a program, use the command lua filename.lua (please make sure you have lua installed!)
Also, to stop a program, use CTRL^C (ctrl + c)
Ok now actual programming.]]

print("Hello world!")

local rAge = 11
local cAge = 10
local combinedAge = rAge + cAge
print("My age is " .. tostring(rAge) .. " and someone's age is " .. cAge .. ". Together, our combined age is " .. combinedAge .. ".")

local null = nil
local myBoolean = false
local myString = " "
print("null value: " .. tostring(null))
print("boolean value: " .. tostring(myBoolean))


function printNumber(num, num2 )
print("The 1st number is " .. tostring(num) .. "The 2nd number is " .. tostring(num2))
end

printNumber(1, 2)

print(myBoolean and "It's true!" or "It's false!") 

if myBoolean then
    print("It's true!")
else
    print("It's false!")
end

local num1 = 2*5
local num2 = 100/2-25
--print("num1 - num2 = " .. tostring(num1 - num2) .. " and num1 + num2 = " .. tostring(num1 + num2))

--if math.random() > 0.5 then
--    print(true)
--else
--    print(false)
--end
--math.randomseed(os.time())

local aToZ
--print the letters a to z with rng

while( false )
do
   print("Off")
end

function operator_prac(op1, op2)
    local result = op1 == op2
    print("Operand Result is:"  .. tostring(result))
end

operator_prac("bob", "tob")
operator_prac("bob", "bob")

function additive(add1, add2)
    local additiveResult = add1 + add2
    print("Additive Result is:" .. tostring(additiveResult))
end 

additive(8, 7)

function additive2(add1, add2)
    local additive2Result = add1 + add2
    return additive2Result
end

local added = additive2(3, 7)
print(tostring(added))

function testWhileLoop()
    local counter = 0
    while (counter ~= 10)
    do
        print(tostring(counter))
        counter = counter + 1
    end
end

testWhileLoop()

function testWhileLoop()
    local counter = 0
    while (counter ~= 10)
    do
        print(tostring(counter))
        counter = counter + 1
    end
end

testWhileLoop()

    
function miniStopwatch( stopInSeconds )
    local counter = 0
    while( stopInSeconds > counter )
    do
        counter = counter + 1
        print(tostring(counter))
    end
end
--100 lines NICE

miniStopwatch( 5 )

-- Use Ctrl + C in terminal to stop a program

i = 10
repeat
print("value of i:", i)
i = i + 1
until i > 20

function forStopwatch( stopAt )
    for forCounter = 1, stopAt, 2 do
        print(tostring(forCounter))
    end
end

forStopwatch( 17 )

function repeatUntilStopwatch( stopAtSecond )
    local coconut = 1
    repeat
    print("random numbers:" .. tostring(coconut))
    coconut = coconut + 1
    until coconut > stopAtSecond
end

repeatUntilStopwatch( 24 )

function BreakTest1( stopTime, breakTime )
    local counter = 0
    while( counter < stopTime )
    do
        counter = counter + 1
        print(tostring(counter))
        if counter == breakTime then
            break
        end
    end
end

BreakTest1( 10, 6 )

function CheckName( name )
    local myName = "REDACTED"
    if name == myName
    then
        print("Correct! The name is " .. myName)
    else
        print("Wrong!" .. name .. "  is not the name.")
    end
end

CheckName( "REDACTED" )

function CheckName( name, age )
    local myName = "REDACTED"
    local myAge = 11
    if name == myName
    then
        print("Correct! The name is " .. myName)
        if age == myAge
        then
            print("Correct! The age is " .. myAge)
        else 
            print("Wrong! The age is not " .. age)
        end
        
    else
        print("Wrong! The name is not " .. name)
        if age == myAge
        then
            print("Correct! The age is " .. myAge)
        else 
            print("Wrong! The age is not " .. age)
        end
    end
    

end

CheckName( "REDACTED", 1 ) 

function CheckName( name, age )
    local myName = "REDACTED"
    local myAge = 11
    if name == myName
    then
        print("Correct! The name is " .. myName)
    else
        print("Wrong! The name is not " .. name)
    end
    if age == myAge
    then
        print("Correct! The age is " .. myAge)
    else 
        print("Wrong! The age is not " .. age)
    end
end
--200 lines NICE

CheckName( "REDACTED", 1 ) 

function CheckName( name, age )
    local myName = "REDACTED"
    local myAge = 11
    if name == myName and age == myAge
    then
        print("Correct! The name is " .. myName .. " and the age is " .. myAge) 
    elseif name == myName and age ~= myAge
    then
        print("Correct! The name is " .. myName .. " but the age is not " .. age)
    elseif name ~= myName and age == myAge
    then
        print("Wrong! The name is not " .. name .. " but the age is correct at " .. myAge)
    else
        print("Wrong! The name is not " .. name .. " and the age is not " .. age)
    end
end

CheckName( "REDACTED", 1 ) 

-- get the system current date and time
currentDate = os.date()
-- print the date
print(currentDate)

-- get the formatted date
formattedDate = os.date("%d-%m-%Y")
-- print the date
print(formattedDate)

--[[Character	Description	Example
a	Abbreviated weekday name	Wed
A	Full weekday name	Wednesday
b	abbreviated month name	Sep
B	full month name	September
c	date and time	09/16/98 23:48:10
d	day of the month	(16)[01-31]
H	hour, using a 24-hour clock	(23) [00-23]
I	hour, using a 12-hour clock	(11) [01-12]
M	minute	(48) [00-59]
m	month	(09) [01-12]
p	either "am" or "pm"	(pm)
S	second	(10) [00-61]
w	weekday	(3) [0-6 = Sunday-Saturday]
x	date	09/16/98
X	time	23:48:10
Y	full year	1998
y	two-digit year	(98) [00-99]
%	the character `%´	%]]

--[[while true do
    local something = os.clock()
    print(tostring(something))
end]]

time1 = os.time({year = 2024, month = 9, day = 15, hour = 8, min = 0})
-- define another date
time2 = os.time({year = 2024, month = 9, day = 15, hour = 9, min = 0})
diff = os.difftime(time2, time1)
print("Time difference:", diff, "seconds")

function osClockTest(countUpTo)
    local startTime = os.clock()
    for counter = 0, countUpTo, 1
    do
        print(tostring(counter))
    end
    local stopTime = os.clock()
    print("Start Time:" .. tostring(startTime))
    print("Stop (end) Time:" ..  tostring(stopTime))
    local difference = stopTime - startTime
    print(tostring(difference))
end

osClockTest(100)

function osClockTest(countUpTo)
    local startTime = os.clock()
    local counter = 0
    while counter < countUpTo
    do
        counter = counter + 1
        print(tostring(counter))
    end
    local stopTime = os.clock()
    local difference = stopTime - startTime 
    print("Start Time:" .. tostring(startTime))
    print("Stop (end) Time:" .. tostring(stopTime))
    print("Difference:" .. tostring(difference))
end

osClockTest(100)

function another_loop_test_and_stuff(munbers)
    currentDate = os.time()
    for anotherVariable = 1, munbers, 1.0000000
    do
        print(anotherVariable .. "," .. os.time())
    end
end

another_loop_test_and_stuff(11.00000000)

function another_loop_test_and_stuff2(numbers)
    currentDate = os.time()
    local yetAnotherVariable = 1
    while(yetAnotherVariable < numbers)
    do
        print(yetAnotherVariable .. "," .. os.time())
        yetAnotherVariable = yetAnotherVariable + 1
    end
end

another_loop_test_and_stuff2(12.0000)

function ageChecker(tage, otherage)
    if tage > otherage
    then
        print("im older than you haha")
    elseif otherage > tage
    then
        print("im younger........")
    elseif tage == otherage
    then
        print("Saem age.....")
    end
end

ageChecker(12, 12)

--[[0 = false 1 = true
    AND OR NOT
00  F   F  TT
01  F   T  TF
10  T   T  FT
11  T   T  FF
]]

-- to make multi line comments put the double dash and two opening and to close just put closing ones 

function ageNumberTest(REDACTEDAge, rn1, rn2)
    if REDACTEDAge == rn1 and REDACTEDAge == rn2 
    then
        print(rn1 .. " " .. "," .. " " ..  rn2 .. " " .. "and my age are equal")
    end
end

ageNumberTest(12, 12, 12)

local t = {1,10,20,30}
print(t[1] .." ".. t[3])

-- YAEY taebls

function tablespt1 (value1, value2, value3, value4)
    local t = {value1, value2, value3, value4}
    return t 
end

local value = tablespt1(10, 20, 50, 99)
local countUpIndex = 1
repeat
    print(value[countUpIndex])
    countUpIndex = countUpIndex + 1
until(countUpIndex == 5)


function isAgeInTable (myActualAge, tabel)
    for tableIndex = 1 , 5 , 1
    do
        if tabel[tableIndex] == myActualAge
        then         
            return true
        end
    end
    return false
end

local result = isAgeInTable(12, {5,10,1,17,25})

print (result)


function printCharOfString(str)
   
    for yetAnotherVariableAgain = 1,#str, 1
    do
        print(str:sub(yetAnotherVariableAgain,yetAnotherVariableAgain))
    end
end

printCharOfString("lkhaaewsbj")

--yay function

function replaceFoundString(mainString, findString, replaceString)
    --[[1 - make findString find mainString and replace mainString with replaceString
    400 LINES
    1.1 - find findString in mainString
    1.2 - replace found string with replaceString]]
    print(string.find(mainString, findString))
end

replaceFoundString("hello world","orld", "")

--returns start and end index
--omg omg yay

function findString (mainString, findString)
    --[[1 - Is mainString and findString a string? (You can not find a string if it is not a string)
    2 - (Both strings) Check length count of mainString and findString (if findString has a higher letter count than mainString, findString will never be able to find mainString)
    2.1 - mainString or findString is not a string: print not a string
    3 - Check if findString or mainString is empty (So that the code doesn't run without doing anything)
    4 - Check if findString is adjacent in mainString (Check if index 1 of findString is in mainString)
    4.1 - Shift up an index in findString and move up an index in mainString and compare them
    4.2 - Repeat 4.1 until the end of findString, otherwise return false]]
    --Note: print(string.len("")) is interchangeable with print(# then whatever you put)
    if (string.len(findString)) == (string.len(mainString)) then
        print("findString and mainString have the same letter count.")
        return
    end

    if type(mainString) ~= "string" then
        print("mainString is not a string")
        return 
    end

    if type(findString) ~= "string" then
        print("findString is not a string")
        return
    end

    if (string.len(findString)) > (string.len(mainString)) then
        print("String findString with length:" .. (string.len(findString)) .. " " .. "is longer than String mainString with length:" .. (string.len(mainString)))
        return
    end

    --[[for char in mainString:gmatch '.' do
        print(char)
        if char == findString then
        print("yay")  
        return
        end
    end]]
    
    --[[for countUp = 1, string.len(mainString) do
        mainStringChar = mainString:sub(countUp, countUp)
        print(mainStringChar)
        if mainStringChar == findString 
        then
            print("it is the same ")
            return
        end
    end]]
    
    isPastFindStringIndexOne = false  
    findStringCountingUp = 1
    for countingUp = 1, string.len(mainString) do 
        mainStringCharac = mainString:sub(countingUp, countingUp)
        --findStringCountingUp = 1
        findStringCharac = findString:sub(findStringCountingUp, findStringCountingUp)
        if mainStringCharac == findStringCharac 
        then
            findStringCountingUp = findStringCountingUp + 1.0
            isPastFindStringIndexOne = true
        else 
            if isPastFindStringIndexOne == true 
            then
                return 
            end
        end
        if findStringCountingUp > string.len(findString) then
            print("found......?")
            return 
        end
    end
end

--[[Test 1 (Test tests if find/mainString is a string or not)
findString("hi","bye")
findString("hi", 0)
findString(0,"bye")
findString(37982,37982)
findString(null, null)]]

--[[Test 2
findString("bye","hello") -- Test if findString is longer than mainString and stop if true
findString("hello","bye") -- Test if mainString is longer than findString 
findString("hi","hi") -- Test for same str length
findString("","") -- Test for empty value]]

--[[Test 3]]
findString("ABC", "BD") -- Check for str "a" in str "abc"
findString("ABC", "AB")
findString("A", "AB")
findString("abcde", "fg")
findString("ABCDEG", "CG")
--500 lines!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

function strToInt (a,b)

    print(tonumber(a))
    print(tonumber(b))

    local aConvrerted = tonumber(a)
    local bConvrerted = tonumber(b)

    if aConvrerted == nil then 
        print("Value nil")
        return
    end
    if bConvrerted == nil then 
        print("Value nil")
        return 
    end

    print(a+b)
end

--[[ TESTS
strToInt(5,"3") Works correctly
strToInt("5","3") Works correctly
strToInt(5,3) Works correctly
strToInt("a","b") Works correrctly
strToInt("a","1") Works correctly
strToInt("1","a") Works correctly
strToInt(5, true) Works correctly
strToInt(true, 5) Works correctly
strToInt(true, "a") Works correctly
strToInt("a", true) Works correctly
strToInt(nil, 5) Works correctly
strToInt(5, nil) Works correctly
strToInt(nil, "5") Works correctly
strToInt("5", nil) Works correctly
strToInt(nil, "a") Works correctly
strToInt("a", nil) Works correctly
strToInt(nil, true) Works correctly
strToInt(true, nil) Works correctly
strToInt(nil, nil) Works correctly
strToInt(true, true) Works correctly
strToInt("", 5) Works correctly
strToInt(5, "") Works correctly
strToInt("", "5") Works correctly
strToInt("5", "") Works correctly
strToInt("", true) Works correctly
strToInt(true, "") Works correctly
strToInt("", nil) Works correctly
OMG 550/1000 LINES
strToInt(nil, "") Works correctly
strToInt("", "") Works correctly]]

function splitStringByU002C(ssbuString)
    for currentWord in string.gmatch(ssbuString, "([^,]+)")
    do
        print(currentWord)
    end
end

splitStringByU002C("Hello, my, name, is, REDACTED")


