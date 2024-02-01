module PlutoCLI

using Comonicon
using Pluto
using LibGit2
using Pkg

"""
    run_featured_notebook(port::Int)

Start a new Pluto Notebook in the featured notebook environment.
"""
function run_featured_notebook(port::Int)
    @assert VERSION >= v"1.6" && VERSION < v"1.7" "Featured notebook should be run in Julia 1.6s. Got $VERSION."
    
    # Clone the repository into the directory
    pluto_featured_repo_url = "https://github.com/JuliaPluto/featured"
    directory_path = joinpath(expanduser("~"), ".julia", "plutocli","envs","featured")

    if !isdir(directory_path)
        # Clone the repository
        mkpath(directory_path)
        LibGit2.clone(pluto_featured_repo_url, directory_path)
    else
        repo = LibGit2.GitRepo(directory_path)
        # Fetch and pull the latest changes
        LibGit2.fetch(repo)
    end


    cd(joinpath(directory_path,"pluto-deployment-environment"))
    Pkg.activate(".")
    Pkg.instantiate()

    # Start the notebook
    @info "Starting Pluto on port $port..."
    Pluto.run(;port_hint=port)
end

"""
    run_regular_notebook(port::Int)

Start a new regular Pluto Notebook.
"""
function run_regular_notebook(port::Int)
    @info "Starting Pluto on port $port..."
    Pluto.run(;port_hint=port)
end


"""
    run(; [port::Int=1729], [featured::Bool=false], [featured_port::Int=3458])

Start a new Pluto Notebook.
"""
@cast function run(; port::Int=1729, featured_port::Int=3458, featured::Bool=false)

    if featured
        run_featured_notebook(featured_port)
    else
        run_regular_notebook(port)
    end
    
end
 
@main

end # PlutoCLI