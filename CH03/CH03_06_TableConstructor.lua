#!/usr/local/bin/lua
--
--	Chapter 03: Table Constructor
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-12
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

days = {"Sunday", "Monday", "Thuesday", "Wednesday", "Thursday", "Friday", "Saturday"}
print(days[4])

print("====================")

a = {x = 10, y = 20}
print(a.x, a.y)

a = {}
a.x = 10
a.y = 20

print(a.x, a.y)

print("====================")

w = {x = 0, y = 0, label = "console"}
x = {math.sin(0), math.sin(1), math.sin(2)}
w[1] = "another field"
x.f = w
print(w["x"])
print(w[1])
print(x.f[1])
w.x = nil

print("====================")

for line in io.lines() do
	if line == "END" then
		break;
	else
		list = {next = list, value = line}
	end
end

local l = list
while l do
	print(l.value)
	l = l.next
end

print("====================")

polyline = {color = "blue", thickness = 2, npoints = 4,
			{x = 0, y = 0},
			{x = -10, y = 0},
			{x = -10, y = 1},
			{x = 0, y = 1}}
print(polyline[2].x)
print(polyline[4].y)

print("====================")

opnames = {["+"] = "add", ["-"] = "sub", ["*"] = "mul", ["/"] = "div"}
i = 20; s = "-";
a = {[i + 0] = s, [i + 1] = s .. s, [i + 2] = s .. s .. s}
print(opnames[s])
print(a[22])

print("====================")

days = {[0] = "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"}

for i = 0, #days do
	print(days[i])
end

print("====================")

a = {[1] = "red", [2] = "green", [3] = "blue",}

for i = 1, #a do
	print(a[i])
end

print("====================")