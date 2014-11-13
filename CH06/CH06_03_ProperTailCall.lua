#!/usr/local/bin/lua
--
--	Chapter06: Proper Tail Call
--	Programming in Lua
--
--	Created by Ge Jian Feng on 2014-11-13
--	Copyright (c) 2014 Ge Jian Feng. All rights reserved.
--

print("====================")

function room1()
	local move = io.read()
	if move == "south" then
		return room3()
	elseif move == "east" then
		return room2()
	else
		print("invalid move")
		return room1()
	end
end

function room2()
	local move = io.read()
	if move == "south" then
		return room4()
	elseif move == "west" then
		return room1()
	else
		print("invalid move")
		return room2()
	end
end

function room3()
	local move = io.read()
	if move == "north" then
		return room1()
	elseif move == "east" then
		return room4()
	else
		print("invalid move")
		return room3()
	end
end

function room4()
	print("congratulations!")
end

room1()

print("====================")