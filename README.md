```markdown
# C Starter

## Description

This is a simple C project that demonstrates basic compilation and testing using Makefile.

## Project Structure

```

my_project/
├── src/                # Source files
│   ├── main.c         # Main application file
│   └── math_utils.c    # Math utility functions example file
├── include/            # Header files
│   ├── math_utils.h    # Header for math utilities functions file
├── tests/              # Unit tests
│   ├── test_math_utils.c # Test cases for math utilities
│   └── test_runner.c   # Runner for tests
├── build/              # Directory for build artifacts
├── Makefile            # Makefile for building the project
└── .gitignore          # Git ignore file

```

## Compilation

To compile the project, navigate to the project directory and run:

```bash
make build
```

## Running the Application

After building, you can run the application using:

```bash
make run
```

## Running Tests

To run the tests, use:

```bash
make test
```

## Clean Up

To remove compiled files and clean up the project, use:

```bash
make clean
```

## License

This project is licensed under the MIT License.

```
