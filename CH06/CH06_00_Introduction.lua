#!/usr/local/bin/lua
--
--	Chapter06: Introduction
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-13
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

a = {p = print}
a.p("Hello World")
print = math.sin
a.p(print(1))
sin = a.p
sin(10, 20)
print = a.p

print("====================")

foo = function (x)
	  	return 2 * x
	  end
print(foo(2))

print("====================")

network = {
	{name = "grauna", IP = "210.26.30.34"},
	{name = "arraial", IP = "210.26.30.23"},
	{name = "lua", IP = "210.26.23.12"},
	{name = "derain", IP = "210.26.23.20"},
}

table.sort(network, function(a, b) return (a.name > b.name) end)

for k, v in pairs(network) do
	print(v.name, v.IP)
end

print("====================")

function derivative(f, delta)
	delta = delta or 1e-4
	return function(x)
		   	return (f(x + delta) - f(x)) / delta
		   end
end

c = derivative(math.sin)
print(math.cos(10), c(10))

print("====================")