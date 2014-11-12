#!/usr/local/bin/lua
--
--	Chapter 03: Logic Expression
--	Programming in Lua
--
--	Created by Ge Jian Feng 2014-11-09
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

print(4 and 5)
print(nil and 13)
print(false and 13)
print(4 or 5)
print(false or 5)

print("====================")

print(not nil)
print(not false)
print(not 0)
print(not not nil)

print("====================")