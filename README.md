# Script-Core

Script-Core is a static library that provides core functionality for the Script project.

## Installation

To use Script-Core in your project, follow these steps:

1. Clone the repository or download the source code.
2. Include the necessary header files in your project.
3. Link against the Script-Core library during compilation.

## Usage

The Script-Core library provides the following classes and functions:

### Layer

The `Layer` class is an abstract base class that defines the interface for script layers.

#### Public Member Functions

- `virtual ~Layer()`: Destructor for the `Layer` class.
- `virtual int work1() = 0`: Pure virtual function that performs work 1.
- `virtual int work2() = 0`: Pure virtual function that performs work 2.
- `virtual int work3() = 0`: Pure virtual function that performs work 3.


