#!/usr/local/bin/lua
--
--	Chapter04: Control Structure
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-12
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

a = -5

if a < 0 then
	a = 0
end

print(a)

function MinData(a, b)
	if a < b then
		return a
	else
		return b
	end
end

print(MinData(5, 6))
print(MinData(45, 1))

function Calculate(op, a, b)
	if op == "+" then
		return a + b
	elseif op == "-" then
		return a - b
	elseif op == "*" then
		return a * b
	elseif op == "/" then
		return a / b
	else
		error("invalid operation")
	end
end

print(Calculate("+", 5, 6))
print(Calculate("-", 5, 6))
print(Calculate("*", 5, 6))
print(Calculate("/", 5, 6))
--print(Calculate("&", 5, 6))			-- Error

print("====================")

do
	local a = {1, 2, 3, 4, 5}
	local i = 1
	while a[i] do
		print(a[i])
		i = i + 1
	end
end

print("====================")

do
	repeat
		line = io.read()
	until line ~= ""
	print(line)

end

do
	local x = 0.1
	local sqr = x / 2
	repeat
		sqr = (sqr + x / sqr) / 2
		local error = math.abs(sqr ^ 2 - x)
		print(error)
	until error < x / 1000
end

print("====================")

do
	local i
	for i = 10, 1, -1 do
		print(i)
	end
end

do
	local i
	for i = 1, math.huge do
		if (0.3 * i ^ 3 - 20 * i ^ 2 - 500 >= 0) then
			print(i)
			break
		end
	end
end

do
	for i = 1, 10 do
		print(i)
	end
	max = i
	print(max)
end

print("====================")

do
	local t = {1, 3, 5, 7, 9}
	for i, v in ipairs(t) do
		print(i, v)
	end
end

do
	local days = {"Sunday", "Monday", "Tuesday", "Wendesday", "Thursday", "Friday", "Saturday"}
	local revDays = {}
	for k, v in ipairs(days) do
		revDays[v] = k
	end
	local x = "Tuesday"
	print(revDays[x])
end

print("====================")