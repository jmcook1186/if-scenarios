Start by opening the `boilerplate.yml` file in your editor.

The calculation we want to express in the manifest file is the product of energy consumption (kWh) and grid carbon intensity (gCO2e/kWh) to yield carbon emissions (gCO2e).

The grid carbon intensity is taken to be 163 g / kWh.
The energy consumption is 0.05 kWh.

## 1. Choose a plugin

There are two plugins in the standard library that can multiply two terms together: `Coefficient` and `Multiply`.
The difference between them is that `Coefficient` multiplies a named value from the `inputs` array by a coefficient whose value is provided in the plugin config, whereas `Multiply` multiplies two named values from the `inputs` array. For this example, let's use `Coefficient`.

## 2. Create an instance of the plugin

The manifest contains a section called `plugins`. This is where you create instances of plugins that will be executed when Impact Framework runs. This is where your plugin instances are named and configured. In this example, we'll assume the energy consumption data is found in `inputs` and the grid carbon intensity is a coefficient whose value is known in advance and can be provided in the plugin `config`.

To create an instance of `Coefficient` named `multiply-energy-by-carbon-intensity-component-1` that will grab `energy` dtaa from `inputs`, multiply it by `163` and return the result to `outputs` as `carbon`, you can add the following to the `plugins` section of the manifest:

```yaml
multiply-energy-by-carbon-intensity-component-1:
  method: Coefficient
  path: "builtin"
  config:
    input-parameter: energy
    coefficient: 163
    output-parameter: carbon
```

## 3. Define a component

Now you have a plugin instance, you need a component where it will run.
