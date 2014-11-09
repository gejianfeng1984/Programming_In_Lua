#!/usr/local/bin/lua
--
--	Chapter 01: Introduction
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-09
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

print("Hello World")

print("====================")

function fact(n)
	if n == 0 then
		return 1
	else
		return n * fact(n - 1)
	end
end

print("enter a number:")
a = io.read("*number")
print(fact(a))

print("====================")