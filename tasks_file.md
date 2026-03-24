# Some context
The folder saddle_combinatorics is the main folder for this project. 

The bulk of the work on which is project rely on is in paper_v0.tex and the main notation to use is described in paper_v1.tex. In this work we will reformulate paper_v0 to describe the combinatorics of saddle points. Therefore the previous versions of this work are paper_v0 and paper_v1. They are in the subfolder named previous_version.

The main papers that are useful for background are in the paper_background folder. 

The overall goal of this work will be to write a paper on the combinatorics of the saddles obtain from a stratification of the critical loci of saddle points of rank r. This is the same goal as paper_v0.tex (without the codimension computation formula) except that we are going to use a more straightforward approach that does not require the suspicious lifting of the cyclic variety to the critical loci.

When generating a new task you will create a new file in the work_file folder. You can generate subfolders that should roughly correspond to subsections of the paper. 

For more information about what a good research process look like you can consult the vibe_physics_the_ai_grad_student_anthropic.pdf paper. 
# Tasks
First we will generate some conjectures that we will prove. At a high level there are going to be three main results in the paper. 

## Setup folder

The setup is similar to the one described in the background section of paper_v1.tex except that we will not work with the residual space. Instead we will work on the weight space directly. 

The key change is that we will define the following objects:

$$\Sigma_r $$ the determinantal variety of parameters whose product is a student of rank r
$$\Gamma_d,S$$ the cyclic variety of parameters satisfying the set of cyclic vanishing equations from the zero of the gradient of loss (which should look something like $$W_{<l}\Sigma_x^-1\Sigma_XYW_>l = 0$$ for all l) 

And finally the variety $$\Gamma^r_{d,s}$$ which is the intersection of $$\Sigma_r$$ with $$\Gamma_d,S$$

The first conjecture is that:
A stratification of $$\Gamma_d,S$$ gives a stratification of $$C^d_{r,s}$$ which is only defined in terms of weight matrix mapping to $$W_S:=P_Q\Sigma_{XY}\Sigma_X^-1$$ and the set of equations from gradient of loss being 0 and not related to the space of residuals as was done in paper_v0.tex.

We have to show that the orbits of $$\Gamma^r_{d,s}$$ and $$C^d_{r,s}$$ under the group $$G_d^\sigma$$ with G_d is the stabilizer of the map P_Q\Sigma_{XY}\Sigma_X^-1 into G_d (product of GL(d_l) for all layers) are in bijections (this replaces the lifting statement from paper_v1 and v0). This will then allow to stratify $$\Gamma^r_{d,s}$$ to stratify the critical loci.


Instruction: Your first goal is to look at paper_v0 and read the following and make it into a clear sequence of tasks that should result in stating the conjecture correctly with the proper setup introduced. In particular you will suggest a structure of files in the work_files directory that will be suitable for you to decompose this complex goal into manageables tasks that you will complete in these separate files. You will write this plan in the Making setup folder in work_files of this file. 

# Making setup folder in work_files
