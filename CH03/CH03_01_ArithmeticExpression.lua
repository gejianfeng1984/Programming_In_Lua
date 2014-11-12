#!/usr/local/bin/lua
--
--	Chapter 03: Arithmetic Expression
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-09
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

a = 2
b = 3
print(a % b == a - math.floor(a / b) * b)

print("====================")

x = math.pi
print(x - x % 0.01)

print("====================")

local  tolerance = 10

function isturnback(angle)
	angle = angle % 360
	return (math.abs(angle - 180) < tolerance)
end

print(isturnback(-180))

print("====================")

tolerance = 0.17

function isturnback(angle)
	angle = angle % (2 * math.pi)
	return (math.abs(angle - math.pi) < tolerance)
end

print(isturnback(-math.pi))

print("====================")