#!/usr/local/bin/lua
--
--	Chapter 02: Table
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-09
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

a = {}
k = "x"
a[k] = 10
a[20] = "great"
print(a["x"])

k = 20
print(a[k])

a["x"] = a["x"] + 1
print(a["x"])

print("====================")

a = {}
a["x"] = 10
b = a
print(a["x"])
print(b["x"])

b["x"] = 20
print(a["x"])
print(b["x"])

a = nil
--print(a["x"])
print(b["x"])
b = nil
--print(a["x"])
--print(b["x"])

print("====================")

a = {}
for i = 1, 1000 do
	a[i] = i * 2
end
print(a[9])

a["x"] = 10
print(a["x"])
print(a["y"])

print("====================")

a.x = 10
print(a.x)		-- Equal to: a["x"]
print(a.y)		-- Equal to: a["y"]

print("====================")

a = {}
x = "y"
a[x] = 10
print(a[x])
print(a.x)
print(a.y)

print("====================")

a = {}
for i = 1, 10 do
	a[i] = io.read()
end

--[[
a = {}
for i = 1, 10 do
	a[#a + 1] = io.read()
end
--]]

for i = 1, #a do
	print(a[i])
end

print("====================")

v = "end"
print(a[#a])
a[#a] = nil
a[#a + 1] = v
print(a[#a])

print("====================")

a = {}
a[10000] = 1
print(table.maxn(a))

print("====================")

i = 10; j = "10"; k = "+10"
a = {}
a[i] = "one value"
a[j] = "another value"
a[k] = "yet another value"
print(a[j])
print(a[k])
print(a[tonumber(j)])
print(a[tonumber(k)])

print("====================")