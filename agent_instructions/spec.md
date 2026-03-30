# Spec

## Goal

Write a publishable draft of the paper title ''Combinatorics of saddle points in deep linear networks''

There is a current draft written but some important parts are lacking:

* You need to check all the propositions with lean
* You need to write a much more thorough literature review

## Scope

- Show that we can stratify the algebraic variety of rank $r$ critical point associated with a subset of singular values $S$ of the teacher matrix by orbits parameterized by cyclic rank patterns.
- Read the plan in plan.md to see the different tasks to accomplish

## Constraints
- Do not go to any parent folder of saddle_combinatorics. All you need is in that folder and subfolder (of course you can use internet to search resources relevant to the paper)
- Make sure that you stay in the dev-lean branch of the git repo (DO NOT ever modify the main branch)
- Do not push anything to github
- Read the current paper draft.pdf to see current progress
- Look at paperv0 for similar propositions except that we work in the parameter space not the residual space
- Look at paperv1 for the overall structure of the paper
- The structure of the workflow must be similar to the work_file folder here is the workflow:
  - Create new folder for a conjecture
  - Create files tasks to prove the conjecture
 - Each file correspond to a task
 - Each file-tasks should probably not be longer than 10 pages otherwise this means the tasks is too long
 - If the task is too long refine it into smaller tasks
 - In this case update the new plan to make it finer.
 - Before working ensure that the plan is fine grain enough for you to execute effectively
- Be rigorous and precise, define new terms
- Standard is mathematical rigour at the level of mathematical publication
- Keep a log of major decisions (write them in a new file that you will name agent_log.md)
- We are extending the work of Simon Pepin Lehalleur on the fiber of the multiplication map (see papers in the folder background_papers). So we should recover particular cases of rank r=d_L (output dimension of the DLN)

# Done means:

- You have executed all the goals and tasks in plan.md
- You have a draft of a publishable paper with proper citations, abstract, introduction, contributions, related work, discussion and appendix on top of the main body of results
- All propositions, theorem have been rigorously stated and proven
- You have permission to continually do work without asking me, only come back to me when the work is completely done.
