## View the outputs

In the previous step you ran a three-timestep IMP.

Open your `outputs.yml` file in the editor and notice that your `outputs` array now has three elements. 

Every element in `outputs` has the exact same set of fields, but the values are different. This is because an identical pipeline of plugins was executed, but different values passed into those plugins for each timestep.
