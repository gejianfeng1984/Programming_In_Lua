#!/usr/local/bin/lua
--
--	Chapter 02: String
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-09
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

a = "one string"
b = string.gsub(a, "one", "another")
print(a)
print(b)

print("====================")

a = "a line"
b = 'another line'

print("one line\nnext line\n\"in quotes\", 'in quotes'")

print('a backslash inside quotes: \'\\\'')

print("a simpler way: '\\'")

print("====================")

page = [[
<html>
<head>
<title>An HTML Page</title>
</head>
<body>
<a href = "http://www.lua.org">Lua</a>
</body>
</html>]]

print(page)

print("====================")

print("10" + 1)
print("10 + 1")
print("-5.3e-10" * "2")
--print("hello" + 1)			-- error
print(10 .. 20)

print("====================")

line = io.read()
n = tonumber(line)
if n == nil then
	error(line .. " is not a number")
else
	print(n * 2)
end

print("====================")

print(tostring(10) == "10")
print(10 .. "" == "10")

print("====================")

a = "hello"
print(#a)
print(#"good\0bye")

print("====================")