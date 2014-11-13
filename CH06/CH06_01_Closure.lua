#!/usr/local/bin/lua
--
--	Chapter06: Closure
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-13
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

names = {"Peter", "Paul", "Mary"}
grades = {Mary = 10, Paul = 7, Peter = 8}
table.sort(names, function(n1, n2) return grades[n1] > grades[n2] end)

for k, v in pairs(names) do
	print(v)
end

names = {"Peter", "Paul", "Mary"}
grades = {Mary = 10, Paul = 7, Peter = 8}

function sortByGrade(names, grades)
	table.sort(names, function(n1, n2) return grades[n1] > grades[n2] end)
end

sortByGrade(names, grades)

for k, v in pairs(names) do
	print(v)
end

print("====================")

function newCounter()
	local i = 0
	return function()
		   	i = i + 1
		   	return i
		   end
end

c1 = newCounter()
print(c1())
print(c1())

c2 = newCounter()
print(c2())
print(c2())
print(c2())

print("====================")