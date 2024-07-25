
# Simple Office Problem
The office domain involves a robot that can move between waypoints, pick and place objects, and optionally interact with people.

## Table of Contents
- [Files](#files)
- [Instructions](#instructions)
- [Example Commands](#example-commands)
- [License](#license)
- [Contributing](#contributing)

## Files
- **office_domain.pddl**: This file defines the domain for the office problem, including types, predicates, and actions.
- **office_problem.pddl**: This is the problem instance for the office domain, specifying the initial and goal states.
- **Metric-FF**: A planner that can be used to solve the given problem.
- **popf**: Another planner that can be used to solve the given problem.

## Instructions
1. **Define the Domain**: Review the `office_domain.pddl` file to understand the capabilities of the domain.
2. **Review Problem File**: Understand the objectives of the problem specified in the `office_problem.pddl` file.
3. **Run the Planners**:
   - Use `Metric-FF` to solve the problem by running the appropriate commands in your environment.
   - Alternatively, use `popf` for solving the problem.

## Example Commands
To run the planners, use commands similar to:
```bash
./Metric-FF -o office_domain.pddl -f office_problem.pddl
./popf -o office_domain.pddl -f office_problem.pddl
```

