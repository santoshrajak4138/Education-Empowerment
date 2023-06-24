-- Education Empowerment --

-- define variables 
local studentName 
local studentAge 
local studentClass 
local studentMajor

-- define functions 

local function getStudentName(name)
	studentName = name
end

local function getStudentAge(age)
	studentAge = age
end

local function getStudentClass(class)
	studentClass = class
end

local function getStudentMajor(major)
	studentMajor = major
end

-- define main function 
local function main()
	
	-- prompt user for name
	io.write("Please enter your name:  ")
	local name = io.read()

	-- prompt user for age
	io.write("Please enter your age:  ")
	local age = io.read()

	-- prompt user for class
	io.write("Please enter your class:  ")
	local class = io.read()

	-- prompt user for major 
	io.write("Please enter your major:  ")
	local major = io.read()

	-- set student information 
	getStudentName(name)
	getStudentAge(age)
	getStudentClass(class)
	getStudentMajor(major)

	-- print student information 
	io.write("\nName: "..studentName.."\nAge: "..studentAge.."\nClass: "..studentClass.."\nMajor: "..studentMajor.."\n")

	-- print message 
	io.write("\nWe are here to support your educational journey!\n")

end

-- call main 
main()