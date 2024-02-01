#!<path to your julia executable>
using Comonicon
using Pluto

@cast module PlutoCLI
using Comonicon


"""
    start

Start a new Pluto Notebook
"""
@cast function run(; port::Int=1729, featured_port::Int=3458, featured::Bool=false)

    if featured
        @assert VERSION >= v"1.6" && VERSION < v"1.7" "Featured notebook should be run in Julia 1.6. (Update the shebang)"

        # TODO create new project in location with project from /featured

        Pluto.run(;port_hint=featured_port)
    else
        Pluto.run(;port_hint=parse(Int, port))
    end
    
end
 
@main

end # PlutoCLI

export PlutoCLI

PlutoCLI.command_main()