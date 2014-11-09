#!/usr/local/bin/lua
--
--	Chapter 01: Chunk
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-09
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

a = 1
b = a * 2

print(a, b)

a = 1
b = a * 2

print(a, b)

a = 1; b = a * 2

print(a, b)

a = 1 b = a * 2

print(a, b)

print("====================")

function norm(x, y)
	return (x ^ 2 + y ^ 2) ^ 0.5
end

function twice(x)
	return 2 * x
end

n = norm(3.4, 1.0)
print(twice(n))

print("====================")