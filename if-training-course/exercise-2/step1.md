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

Now you have a plugin instance, you need a component where it will run. In this example, there is only one component. In a real manifest, it's likely that you'll have many components, possibly nested in complex arrangements.

A component is just a block of yaml that conforms to a simple structure. It has a `name`, `pipeline` and `inputs`. There is also an optional `defaults` field.

```yaml
component-name:
  pipeline:
    compute:
    defaults:
    inputs:

```

You can give your component any unique name. The pipeline is a set of plugins you want to execute on your input data. They are listed in the `pipeline` section in the order that they will executed. You can add constants to `defaults` - they will be automatically copied into every element in `inputs` at runtime. This is functionaly equivalent to adding the key/value pair to every element in your `inputs`, but quicker and less error prone. `inputs` is where you provide your input data - it can have any set of key/value pairs, but every element must have a `timestep` and `duration`.

The compelted component for this example looks as follows:

```yaml
component-1:
  pipeline:
    compute:
      - multiply-energy-by-carbon-intensity-component-1
    inputs:
      - timestamp: 2023-08-06T00:00
        duration: 3600
        energy: 0.05
```


Now you can update `boilerplate.yml`. Instantiate the plugin and create the component. If you need help, there is a completed manifest available in `manifest-example.yml`.

Save your manifest as `manifest.yml`

## Run the manifest

Run the manifest using:

```sh
if-run -m manifest.yml -o outputs.yml
```


## Test your learning

1) Try swapping out the `Coefficient` plugin for `Multiply` to give the same result.
   
2) Try varying the values for `energy` and `grid-carbon-intensity` and observe the changing output
   
3) Try adding components and observing how each component's pipeline is executed independently.
