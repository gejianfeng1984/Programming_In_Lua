#!/usr/local/bin/lua
--
--	Chapter05: Introduction
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-12
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

print(8 * 9, 9 / 8)
a = math.sin(3) + math.cos(10)
print(os.date())

print("====================")

print "Hello World"
print [[a multi-line
	message]]
type{}

print("====================")

function add(a)
	local sum = 0
	for i, v in ipairs(a) do
		sum = sum + v
	end
	return sum
end

a = {1, 3, 5, 7}
print(add(a))

print("====================")

function f(a, b)
	return a or b
end

print(f(3))
print(f(3, 4))
print(f(3, 4, 5))

print("====================")

count = 0
function incCount(n)
	n = n or 1
	count = count + n
end

incCount(5)

print(count)

print("====================")