# PlutoCLI

PlutoCLI is a simple command-line interface for starting Pluto.jl notebooks. It provides an easy way to manage and run your Pluto.jl notebooks from the command line, enhancing your productivity and workflow.

## Table of Contents
- [PlutoCLI](#plutocli)
  - [Table of Contents](#table-of-contents)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Contributing](#contributing)
  - [License](#license)

## Installation

There are two options for installing PlutoCLI:

**Option 1: Run the script directly**

You can simply run the following command to start a notebook:

```bash
julia PlutoCLI.jl run <option>
```

**Option 2: Make the script an executable**

Clone this repository to download the PlutoCLI.jl file.
Rename the PlutoCLI.jl file to pluto (or any other name you prefer).
Replace the shebang in the script with the path to your Julia executable.

**On Linux/WSL:**

```bash
chmod +x pluto
```

Make the file an executable using the following command:
(Optional) Export the binary location to PATH to allow execution from anywhere. For example:
export PATH="$HOME/.julia/bin:$PATH"
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


