--// written by cumburger/reachify
if (not getconnections) then return game.Players.LocalPlayer:Kick("Exploit doesn't support getconnections") end;
if (not hookmetamethod) then return game.Players.LocalPlayer:Kick("Exploit doesn't support hookmetamethod") end;

function SpoofProperty(A,B,C)
    hookfunction(game.Players.LocalPlayer.Kick, function() end)
    
    for i,v in next, getconnections(A:GetPropertyChangedSignal(B)) do
        v.Function = error
        v:Disable()  
    end
    
    for i,v in next, getconnections(A.Changed) do
        v.Function = error
        v:Disable()  
    end

    local Old

    Old = hookmetamethod(game, "__index", function(Self, Key)

        if not checkcaller() and Self == A and Key == B then
            return C
        end

        return Old(Self, Key)
    end)
end
