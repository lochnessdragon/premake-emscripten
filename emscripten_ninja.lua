local p = premake
if os.locate("ninja.lua") then

    require("ninja")
    print("Patching ninja!")

    --
    -- Patch the ninja action with the allowed tools...
    --

    local ninja = p.action.get( 'ninja' )
    if ninja == nil then
        error( "Failed to locate prequisite action 'ninja'" )
    end
    table.insert( ninja.valid_tools.cc, p.EMCC )

    -- emscripten's flags work like gcc/clang
    function premake.tools.emcc.clang_like() 
        return true
    end

end
