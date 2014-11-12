#!/usr/local/bin/lua
--
--	Chapter05: Multiple Results
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-12
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

s, e = string.find("hello Lua users", "Lua")
print(s, e)

print("====================")

function maximum(a)
	local mi = 1
	local m = a[mi]
	for i, val in ipairs(a) do
		if val > m then
			m = val
			mi = i
		end
	end
	return m, mi
end

print(maximum({8, 10, 23, 12, 5}))

print("====================")

function foo0() end
function foo1() return "a" end
function foo2() return "a", "b" end

x, y = foo2()
print(x, y)

x = foo2()
print(x)

x, y, z = 10, foo2()
print(x, y, z)

x, y = foo0()
print(x, y)

x, y = foo1()
print(x, y)

x, y, z = foo2()
print(x, y, z)

x, y = foo2(), 20
print(x, y)

x, y = foo0(), 20, 30
print(x, y)

print("====================")

print(foo0())
print(foo1())
print(foo2())
print(foo2(), 1)
print(foo2() .. "x")

print("====================")

t = {foo0()}
for k, v in pairs(t) do
	print(k, v)
end

t = {foo1()}
for k, v in pairs(t) do
	print(k, v)
end

t = {foo2()}
for k, v in pairs(t) do
	print(k, v)
end

print("====================")

function foo(i)
	if i == 0 then
		return foo0()
	elseif i == 1 then
		return foo1()
	elseif i == 2 then
		return foo2()
	end
end

print(foo(1))
print(foo(2))
print(foo(0))
print(foo(3))

print("====================")

print((foo0()))
print((foo1()))
print((foo2()))

print("====================")

print(unpack{10, 20, 30})
a, b = unpack{10, 20, 30}
print(a, b)

print("====================")

f = string.find
a = {"hello", "ll"}
print(f(unpack(a)))

print("====================")