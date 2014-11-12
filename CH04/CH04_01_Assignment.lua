#!/usr/local/bin/lua
--
--	Chapter 04: Assignment
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-12
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

a = "hello " .. "world"
print(a)

t = {}; t.n = 10;
t.n = t.n + 1
print(t.n)

print("====================")

x = 10
a, b = 10, 2 * x
print(a, b)

print("====================")

x = 10; y = 100;
x, y = y, x
print(x, y)

print("====================")

a, b, c = 0, 1
print(a, b, c)

a, b = a + 1, b + 1, b + 2
print(a, b)

a, b, c = 0
print(a, b, c)

a, b, c = 0, 0, 0
print(a, b, c)

print("====================")