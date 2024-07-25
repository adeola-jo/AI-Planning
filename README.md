

# AI-Planning

## Introduction
Welcome to my AI-Planning repository. This repository contains solutions to various AI planning problems using PDDL (Planning Domain Definition Language). It includes two primary problems: the Blocks World problem and the Simple Office problem. Each problem domain has its own set of files and planners.

## Table of Contents
- [Blocks Problem](#blocks-problem)
  - [Files](#blocks-problem-files)
  - [Instructions](#blocks-problem-instructions)
  - [Example Commands](#blocks-problem-example-commands)
- [Simple Office Problem](#simple-office-problem)
  - [Files](#simple-office-problem-files)
  - [Instructions](#simple-office-problem-instructions)
  - [Example Commands](#simple-office-problem-example-commands)
- [License](#license)
- [Contributing](#contributing)

## Blocks Problem

### Overview
The Blocks Problem folder contains PDDL files and planners for solving various block world problems. The block world domain involves a set of blocks that can be stacked on top of each other or placed on the table. The objective is to achieve specific configurations of these blocks using predefined actions.

### Blocks Problem Files
- **blocks_domain.pddl**: This file defines the domain for the block world, including predicates and actions.
- **blocks_problem1.pddl**: This is the first problem instance in the block world domain.
- **blocks_problem2.pddl**: This is the second problem instance in the block world domain.
- **blocks_problem3.pddl**: This is the third problem instance in the block world domain.
- **Metric-FF**: A planner that can be used to solve the given problems.
- **popf**: Another planner that can be used to solve the given problems.

### Blocks Problem Instructions
1. **Define the Domain**: Review the `blocks_domain.pddl` file to understand the capabilities of the domain.
2. **Review Problem Files**: Understand the objectives of each problem specified in the problem files (`blocks_problem1.pddl`, `blocks_problem2.pddl`, `blocks_problem3.pddl`).
3. **Run the Planners**:
   - Use `Metric-FF` to solve the problems by running the appropriate commands in your environment.
   - Alternatively, use `popf` for solving the problems.

### Blocks Problem Example Commands
To run the planners, use commands similar to:
```bash
./Metric-FF -o blocks_domain.pddl -f blocks_problem1.pddl
./popf -o blocks_domain.pddl -f blocks_problem1.pddl
```

## Simple Office Problem

### Overview
The Simple Office Problem folder contains PDDL files and planners for solving a simple office domain problem. The office domain involves a robot that can move between waypoints, pick and place objects, and optionally interact with people.

### Simple Office Problem Files
- **office_domain.pddl**: This file defines the domain for the office problem, including types, predicates, and actions.
- **office_problem.pddl**: This is the problem instance for the office domain, specifying the initial and goal states.
- **Metric-FF**: A planner that can be used to solve the given problem.
- **popf**: Another planner that can be used to solve the given problem.

### Simple Office Problem Instructions
1. **Define the Domain**: Review the `office_domain.pddl` file to understand the capabilities of the domain.
2. **Review Problem File**: Understand the objectives of the problem specified in the `office_problem.pddl` file.
3. **Run the Planners**:
   - Use `Metric-FF` to solve the problem by running the appropriate commands in your environment.
   - Alternatively, use `popf` for solving the problem.

### Simple Office Problem Example Commands
To run the planners, use commands similar to:
```bash
./Metric-FF -o office_domain.pddl -f office_problem.pddl
./popf -o office_domain.pddl -f office_problem.pddl
```

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing
Please read [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to contribute to this project.

