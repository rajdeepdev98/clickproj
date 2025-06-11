# MyCLI

A command-line interface application with an interactive shell built using Click.

## Features

- Interactive shell mode with command history and tab completion
- Debug mode for verbose output
- Command groups and subcommands
- User management commands
- Greeting functionality

## Installation

You can install this package from source:

```bash
# Clone the repository
git clone <repository-url>
cd clickProj

# Install in development mode
pip install -e .
```

## Usage

### Basic Usage

After installation, you can run the CLI by using the `cli` command:

```bash
cli --help
```

### Interactive Mode

Simply run `cli` without any subcommands to enter interactive mode:

```bash
cli
```

This will present you with a prompt where you can enter commands directly:

```
cli> help
cli> greet Alice
cli> user add bob
cli> exit
```

### Available Commands

#### Greeting

```bash
cli greet NAME
```

Example:
```bash
cli greet Alice
```

#### User Management

Add a user:
```bash
cli user add USERNAME [--admin]
```

Delete a user:
```bash
cli user delete USERNAME
```

### Debug Mode

Add the `--debug` flag to any command to enable debug output:

```bash
cli --debug greet World
```

## Project Structure

```
clickProj/
├── commands/                  # Main package containing all CLI commands
│   ├── __init__.py
│   ├── interactive_group.py   # Implementation of the interactive shell
│   └── cli/                   # CLI command implementations
│       ├── __init__.py
│       ├── cli.py             # Main CLI entrypoint
│       ├── greet/             # Greeting command functionality 
│       │   ├── __init__.py
│       │   └── greet.py
│       └── user/              # User management commands
│           ├── __init__.py
│           └── user.py
├── LICENSE                    # MIT License
├── pyproject.toml             # Project build configuration
└── setup.py                   # Package setup file
```

## Development

To contribute to this project:

1. Fork the repository
2. Create a feature branch
3. Implement your changes
4. Submit a pull request

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Author

Rajdeep Deb
