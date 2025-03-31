In this example, rather than having `energy` given to you, you have to apply another model to get `energy` from memory utilisation. The output from one model (memory utilisation to energy) is the input to the next (energy to carbon).

Let’s build this in a IMP file.

Start with the boilerplate again (`boilerplate.yml`), which you can open in your editor.


## Add plugins

Create two instances of the `Multiply` plugin with different names.  The first can be `memory-to-energy-component-1` and it will multiply `memory-utilization` by `memory-coefficient` to yield `energy`. The second can be called `energy-to-carbon-component-1` and it will multiply `energy` by `carbon-intensity` to yield `carbon`. Add these to the `initialize:plugins` block.

If you need some help, take a peek at `imp-example.yml`.

## Invoke the plugins in your component

Now you have two plugin instances available, you can add them to the `pipeline` for your component. Again, for help, see `imp-example.yml`

Save your IMP as `imp.yml`

## Run your IMP

Now use `if-run -m imp.yml -o outputs.yml` to run your IMP.
