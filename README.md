# PlutoCLI.jl

PlutoCLI.jl is a simple command-line interface for starting Pluto.jl notebooks. It provides an easy way to manage and run your Pluto.jl notebooks from the command line. It is written in Julia using Comonicon.jl

## Table of Contents
- [PlutoCLI.jl](#plutoclijl)
  - [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Contributing](#contributing)
  - [License](#license)

## Installation

- Clone this repo
- Activate the environment
- Run `]build` to build the binary to `~/.julia/bin`
- (Optional) Export the binary location to PATH to allow execution from anywhere. For example:
```export PATH="$HOME/.julia/bin:$PATH"```
- Enjoy!

## Usage
To start a Pluto.jl notebook, run the following command:

```bash
pluto run <option>
```

Replace <option> with the name of your notebook.

## Contributing
Contributions are welcome! Please feel free to submit a Pull Request.

## License
MIT


