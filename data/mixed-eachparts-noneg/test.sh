#!/bin/bash

# ../cgroup-setup.sh

## ff
# this should finish normally (because it is easy)

../../planner-scripts/limit.sh fd-clean p01.pddl domain.pddl

# ../limit.sh -t 1 -o '--search astar(lmcut())' -- fd-clean p01.pddl domain.pddl

# ../limit.sh -t 1 -- fd-clean p18.pddl domain.pddl

# # increased verbosity
# ../limit.sh -t 1 -v -- fd-clean p01.pddl domain.pddl


# # debugging: do not remove temporary directory
# ../limit.sh -t 1 -d -o '--search astar(lmcut())' -- fd-clean  p03.pddl domain.pddl

# # what happens when there are no solution?
# ../limit.sh -t 1 -v -- fd-clean unsolvable.pddl domain.pddl

