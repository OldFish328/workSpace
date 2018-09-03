--台阶递归求解
-- function cal(level,nextStep,strS)
--     level = level - nextStep 
--     if level == 0 then 
--         print(strS .. " " .. nextStep.." }")
--     elseif level == 1 then 
--         strS = strS.." "..nextStep..","
--         cal(level,1,strS)
--     elseif level > 1 then 
--         strS = strS.." "..nextStep..","
--         cal(level,2,strS)
--         cal(level,1,strS)
--     end 
-- end 
-- function test(count)
--     print(count .."阶台阶的走法是：")
--     cal(count,1,"{")
--     cal(count,2,"{")
-- end 
-- test(10)
--=======================================
-- local p = {[1] = 1,[2] = 2,[3] = 3,[4] = 4,[5] = 5,[7] = 7,[8] = 8,[9] = 9,[10] = 10}
-- for i,v in ipairs(p) do
--     print(v)
--     if i == 5 then 
--         print(6) 
--     end 
--     if i >= 5 then 
--         p[i+1] = p[i+2]
--     end 
-- end
--=======================================
-- A = {}
-- A.Name = "ClassA"
-- function A:New(name)
--     local o = {}
--     setmetatable(o, self)
--     self.__index = self 
--     o.Name = name
--     return o
-- end 
-- function A:Display()
--     print(self.Name)
-- end 

-- B = A:New("ClassB")
-- function B:Display()
--     local a = getmetatable(self)
--     a:Display()
--     print(self.Name)
-- end 
-- B:Display()
--========================================
-- function cal(height,time)
--     local tempheight = height 
--     local sum = 0
--     for i = 1, time do 
--         if i == 1 then 
--             sum = tempheight
--         else
--             sum = sum + tempheight * 2 
--         end 
--         tempheight = tempheight / 2 
--     end 
--     print("从"..height.."米落下，到第"..time.."次落下共经过"..sum.."米。第"..time.."次弹起的高度为"..tempheight)
-- end 
-- cal(2000,10)
--=========================================
-- Node = {}
-- Node.NextKey = nil
-- Node.Value = nil 
-- function Node:New(Value,NextKey)
--     local o = {} 
--     setmetatable(o,self)
--     o.Value = Value
--     o.NextKey = NextKey
--     return o 
-- end 

-- NodeList.Head = Node:New(12,"a")
-- Node = {}
-- function Node:new(val)
--     local o = {} 
--     setmetatable(o,self)
--     self.__index = self
--     o.value = val
--     o.pnext = nil
--     return o 
-- end
-- function Node:addNode(nodeChild)
--     nodeChild.pnext = self.pnext
--     self.pnext = nodeChild
--     return nodeChild
-- end
-- List = {}
-- function List:print()
--     local list = self.phead
--     while list do
--         print(list.value)
--         list = list.pnext
--     end
-- end
-- List.phead = Node:new(1)
-- local tempHead = List.phead
-- for i=2, 10 do
--     tempHead:addNode(Node:new(i))
--     tempHead = tempHead.pnext
-- end
-- List:print()

-- --实现头部插入
-- pHead = List.new(10)

-- for i=1, 9 do
--     List.addNode(pHead, List.new(i))
-- end

-- List.print(pHead)


-- function C()
--     local a = 0 
--     return function()
--         a = a + 1
--         return a
--     end 
-- end 

-- local D = C()

-- function B()
--     local count = D()
--     print("已打印:"..count)
-- end 

-- function A()
--     B()
-- end
-- A()
-- A()


-- module("C",package.seeall)
-- function GetCount()
--     local count = 0 
--     return function()
--         count = count + 1
--         return count
--     end 
-- end

-- module("B",package.seeall)
-- require("C")
-- local count = C.GetCount()
-- function Print(text)
--     local num = count()
-- 	print(text.."已打印:"..num)
-- end

-- module("A",package.seeall)
-- require("B")
-- for i = 1,100 do
-- 	B.Print(i)
-- end


-- local t1 = {1,2,3,4,5,6,7,8,9,3,1}
-- local t2 = {1,2,3,5,7,10,1}
-- function Bingji(t1,t2)
--     local tem = {} 
--     for k,v in ipairs(t1) do 
--         tem[v] = true 
--     end 
--     for k,v in ipairs(t2) do 
--         tem[v] = true 
--     end 
--     return tem 
-- end 

-- function jiaoji(t1,t2) 
--     local tem = { }
--     for k,v in ipairs(t1) do 
--         for i,j in ipairs(t2) do 
--             if j == v then 
--                 tem[v] = true 
--             end 
--         end 
--     end 
--     return tem
-- end 

-- jj = jiaoji(t1,t2) 
-- bj = Bingji(t1,t2) 
-- local bjStr = "{ "
-- local jjStr = "{ "
-- for k,v in pairs(bj) do 
--     bjStr = bjStr.. k.."," 
-- end
-- for k,v in pairs(jj) do 
--     jjStr = jjStr.. k.."," 
-- end
-- print("并集为:".. bjStr.." }")
-- print("交集为:".. jjStr.." }")

local p = {[1] = 1,[2] = 2,[3] = 3,[4] = 4,[5] = 5,[7] = 7,[8] = 8,[9] = 9,[10] = 10}
local temp  = {}
for k,v in pairs(p) do
    table.insert(temp,v)
end 
p = temp 
for i,v in ipairs(p) do
    print(v)
end