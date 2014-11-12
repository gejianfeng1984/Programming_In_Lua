#!/usr/local/bin/lua
--
--	Chapter04: Block
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-12
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

do
	j = 10
	local i = 1
end

print(i, j)

print("====================")

do
	x = 10
	local i = 1

	while i <= x do
		local x = i * 2
		print(x)
		i = i + 1
	end

	if i > 20 then
		local x
		x = 20
		print(x + 2)
	else
		print(x)
	end

	print(x)
end

print("====================")

do
	local a = 2
	local b = 5
	local c = 3
	local a2 = 2 * a
	local d = (b ^ 2 - 4 * a * c) ^ (1 / 2)
	x1 = (-b + d) / a2
	x2 = (-b - d) / a2
end
print(x1, x2)

print("====================")

do
	local a, b = 1, 10
	if a < b then
		print(a)
		local a
		print(a)
	end
	print(a, b)
end

print("====================")