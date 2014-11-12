#!/usr/local/bin/lua
--
--	Chapter05: Variable number of argument
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-12
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

function add(...)
	local s = 0
	for i, v in ipairs{...} do
		s = s + v
	end
	return s
end

print(add(3, 4, 10, 25, 12))

print("====================")

function foo(...)
	local a, b, c = ...
	print(a, b, c)
end

foo()
foo(1)
foo(1, 2)
foo(1, 2, 3)
foo(1, 2, 3, 4)

print("====================")

function foo1(...)
	print("calling foo:", ...)
	return foo(...)
end

foo1(1, 2, 3)

print("====================")

function fwrite(fmt, ...)
	return io.write(string.format(fmt, ...))
end

--fwrite()
fwrite("a")
print()
fwrite("%d%d", 4, 5)
print()

print("====================")

function testFunc(...)
	for i = 1, select('#', ...) do
		local arg = select(i, ...)
		print(arg)
	end
end

testFunc(1, nil, nil, false, 1, 2, 3, 3, nil)

print("====================")