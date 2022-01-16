local newindex = nil 
newindex = hookmetamethod(game, "__newindex", function(self, Index, Value)
    if not checkcaller() and self.IsA(self, "Humanoid") and Index == "JumpPower" then 
        return
    end
    
    return newindex(self, Index, Value)
end)
