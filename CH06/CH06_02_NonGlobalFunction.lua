#!/usr/local/bin/lua
--
--	Chapter06: Non Global Function
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-13
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

Lib = {}
Lib.foo = function(x, y) return x + y end
Lib.goo = function(x, y) return x - y end

print(Lib.foo(1, 2))
print(Lib.goo(1, 2))

Lib = {
	foo = function(x, y) return x + y end,
	goo = function(x, y) return x - y end
}

print(Lib.foo(1, 2))
print(Lib.goo(1, 2))

Lib = {}
function Lib.foo(x, y) return x + y end
function Lib.goo(x, y) return x - y end

print(Lib.foo(1, 2))
print(Lib.goo(1, 2))

print("====================")

--[[	ERROR EXAMPLE
do
	local fact = function(n)
				 	if n == 0 then
				 		return 1
				 	else
				 		return n * fact(n - 1)
				 	end
				 end

	print(fact(10))
end
--]]

print("====================")

do
	local fact
	fact = function(n)
		   	if n == 0 then
		   		return 1
		   	else
		   		return n * fact(n - 1)
		   	end
		   end

	print(fact(10))
end

print("====================")

do
	local function fact(n)
		if n == 0 then
			return 1
		else
			return n * fact(n - 1)
		end
	end

	print(fact(10))
end

print("====================")

do
	local f, g

	function f()
		print("f()")
		g()
	end

	function g()
		print("g()")
		f()
	end

	--f()	-- Cause Freeze
end

print("====================")