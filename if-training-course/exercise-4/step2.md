## View the outputs

You just created `outputs.yml`. 

Open that file in your editor.

You will see that two new values have been added to your `outputs`: `energy` and `carbon`.

Notice that `energy` was not available in the original manifest. It was created when the `memory-to-energy-component-1` plugin ran. Then it was used as the input to `energy-to-carbon-component-1`.

If you remove `memory-to-energy-component-1` from your pipeline and run the manifest again, it will fail. This is because `energy` is a necessary input to `energy-to-carbon-component-1`. By omitting the first plugin, you are starving the second plugin of its input data.

This is an important concept in Impact Framework because it means the order of plugin execution in each component is very important.

## Test your learning

1) Try adding another plugin that depends on a `carbon` value being available. Notice that this plugin will run successfully if it is placed in the last position in the pipeline, but it will fail if it is placed anywhere else.
