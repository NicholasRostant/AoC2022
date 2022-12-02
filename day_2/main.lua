local matches = {}
local rock_win = 1
local sci_win = 3
local pap_win = 2
local win = 6
local draw = 3
local lose = 0

function Score_outcome(e, m)
    local score = 0
    if m == "X" then  -- Rock
        score = score+rock_win
        if e == "A" then score = score+draw
        elseif e == "B" then score = score+lose
        elseif e == "C" then score = score + win
        end
    elseif  m == "Y" then  -- Paper
        score = score+pap_win
        if e == "A" then score = score+win
        elseif e == "B" then score = score+draw
        elseif e == "C" then score = score +lose
        end
    elseif m == "Z" then  -- Scissors
        score = score+sci_win
        if e == "A" then score = score+lose
        elseif e == "B" then score = score+win
        elseif e == "C" then score = score + draw
        end
    end
    return score
end

-- function Calc_throw(e,m)
--     if e == "A" then
--         if m=="X" then
--             return "S"
--         end
--     end

for line in io.lines("input.txt") do
    local t={}
    -- for k,v in string.gmatch(line,"[^%s]+") do
    --     t={k,v}
    -- end
    matches[#matches+1] = line
end

Total = 0
for i,v in ipairs(matches) do
    local enemy_throw = string.sub(v,1,1) -- Extract first character
    local my_throw = string.sub(v,3,3) -- Extract last character



    local score = Score_outcome(enemy_throw, my_throw)
    Total = Total+score
    print(enemy_throw,my_throw,score,Total)
end

print(Total)
