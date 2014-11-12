#!/usr/local/bin/lua
--
--	Chapter05: Named Arguments
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-12
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

function rename(arg)
	print("Old Name: " .. arg.old)
	print("New Name: " .. arg.new)
end

rename{old = "temp.lua", new = "temp1.lua"}

print("====================")