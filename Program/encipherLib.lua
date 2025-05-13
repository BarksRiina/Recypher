local lib = {}

function lib.YEENSCODE(input)
    local Y =
{
    a=true,
    f=true,
    k=true,
    p=true,
    u=true,
}
local E =
{
    b=true,
    g=true,
    l=true,
    q=true,
    v=true,
    c=true,
    h=true,
    m=true,
    r=true,
    w=true,
}
local N =
{
    d=true,
    i=true,
    n=true,
    s=true,
    x=true,
}
local S =
{
    e=true,
    j=true,
    o=true,
    t=true,
    y=true,
}
    local stored = ""
    for i = 1, #input, 1 do
        local newval = string.sub(input,i,i)
        if Y[string.lower(newval)] then
            newval = "Y"
        elseif E[string.lower(newval)] then
            newval = "E"
        elseif N[string.lower(newval)] then
            newval = "N"
        elseif S[string.lower(newval)] then
            newval = "S"
        elseif string.lower(newval) == "z" then
            newval = "!"
        elseif newval == " " then
            newval = "_"
        else
            newval = "?"
        end
        stored = stored .. newval
        ::continue::
    end
    print(stored)
    return stored
end

function lib.CEASAR(input, offset)
    local ANI =
    {
        ["a"]=1,
        ["b"]=2,
        ["c"]=3,
        ["d"]=4,
        ["e"]=5,
        ["f"]=6,
        ["g"]=7,
        ["h"]=8,
        ["i"]=9,
        ["j"]=10,
        ["k"]=11,
        ["l"]=12,
        ["m"]=13,
        ["n"]=14,
        ["o"]=15,
        ["p"]=16,
        ["q"]=17,
        ["r"]=18,
        ["s"]=19,
        ["t"]=20,
        ["u"]=21,
        ["v"]=22,
        ["w"]=23,
        ["x"]=24,
        ["y"]=25,
        ["z"]=26,
    }
    local IANI =
    {
        ["0"]="a",
        ["1"]="b",
        ["2"]="c",
        ["3"]="d",
        ["4"]="e",
        ["5"]="f",
        ["6"]="g",
        ["7"]="h",
        ["8"]="i",
        ["9"]="j",
        ["10"]="k",
        ["11"]="l",
        ["12"]="m",
        ["13"]="n",
        ["14"]="o",
        ["15"]="p",
        ["16"]="q",
        ["17"]="r",
        ["18"]="s",
        ["19"]="t",
        ["20"]="u",
        ["21"]="v",
        ["22"]="w",
        ["23"]="x",
        ["24"]="y",
        ["25"]="z",
    }
    
        local CANI =
    {
        ["A"]=1,
        ["B"]=2,
        ["C"]=3,
        ["E"]=5,
        ["F"]=6,
        ["G"]=7,
        ["H"]=8,
        ["I"]=9,
        ["J"]=10,
        ["K"]=11,
        ["L"]=12,
        ["M"]=13,
        ["N"]=14,
        ["O"]=15,
        ["P"]=16,
        ["Q"]=17,
        ["R"]=18,
        ["S"]=19,
        ["T"]=20,
        ["U"]=21,
        ["V"]=22,
        ["W"]=23,
        ["X"]=24,
        ["Y"]=25,
        ["Z"]=26,
    }
    local ICANI =
    {
        ["0"]="A",
        ["1"]="B",
        ["2"]="C",
        ["3"]="D",
        ["4"]="E",
        ["5"]="F",
        ["6"]="G",
        ["7"]="H",
        ["8"]="I",
        ["9"]="J",
        ["10"]="K",
        ["11"]="L",
        ["12"]="M",
        ["13"]="N",
        ["14"]="O",
        ["15"]="P",
        ["16"]="Q",
        ["17"]="R",
        ["18"]="S",
        ["19"]="T",
        ["20"]="U",
        ["21"]="V",
        ["22"]="W",
        ["23"]="X",
        ["24"]="Y",
        ["25"]="Z",
    }
    local stored = ""
    for i=1, #input, 1 do
        local tempval = string.sub(input,i,i)
        if ANI[tempval] then
            tempval = (ANI[tempval] + offset) % 26
            stored = stored..IANI[tostring(tempval)]
        elseif CANI[tempval]  then
            tempval =  (CANI[tempval]+ offset) % 26
            stored = stored..ICANI[tostring(tempval)]
        else
            stored=stored..tempval
        end
    end
    print(stored)
    return stored
end

return lib