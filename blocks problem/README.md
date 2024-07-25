# Blocks Problem

## Introduction
This repository contains PDDL files and planners for solving various block world problems. The block world domain involves a set of blocks that can be stacked on top of each other or placed on the table. The objective is to achieve specific configurations of these blocks using predefined actions.

## Table of Contents
- [Files](#files)
- [Instructions](#instructions)
- [Example Commands](#example-commands)
- [License](#license)
- [Contributing](#contributing)

## Files
- **blocks_domain.pddl**: This file defines the domain for the block world, including predicates and actions.
- **blocks_problem1.pddl**: This is the first problem instance in the block world domain.
- **blocks_problem2.pddl**: This is the second problem instance in the block world domain.
- **blocks_problem3.pddl**: This is the third problem instance in the block world domain.
- **Metric-FF**: A planner that can be used to solve the given problems.
- **popf**: Another planner that can be used to solve the given problems.

## Instructions
1. **Define the Domain**: Review the `blocks_domain.pddl` file to understand the capabilities of the domain.
2. **Review Problem Files**: Understand the objectives of each problem specified in the problem files (`blocks_problem1.pddl`, `blocks_problem2.pddl`, `blocks_problem3.pddl`).
3. **Run the Planners**:
   - Use `Metric-FF` to solve the problems by running the appropriate commands in your environment.
   - Alternatively, use `popf` for solving the problems.

## Example Commands
To run the planners, use commands similar to:
```bash
./Metric-FF -o blocks_domain.pddl -f blocks_problem1.pddl
./popf -o blocks_domain.pddl -f blocks_problem1.pddl
```

## License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Contributing
Please read [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines on how to contribute to this project.



