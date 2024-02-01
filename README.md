# PlutoCLI

Simple CLI for starting Pluto.jl notebooks 

## Installation

Option 1: You can simply run `julia PlutoCLI.jl start <option>` to start a notebook. 
Option 2: Make the script an executable
    - Clone this repo (download the PlutoCLI.jl file)
    - Rename the PlutoCLI.jl file to `pluto` (or something else if you want)
    - Replace the shebang to your julia executable
    *On Linux/WSL* 
    - Make the file an executable `chmod +x pluto`
    - (Optional) Export the binary location to PATH to allow execution from anywhere 
        example: `export PATH="$HOME/.julia/bin:$PATH"` 
