## Setting aggregation methods

Aggregation defaults to summing values to aggregate them. However, this isn't always the right method to use.

For example, you might have values that are expressed in percentages, where it is more appropriate to take their average rather than their sum to aggregate them. Alternatively, you might have constants that should remain the same even when they are aggregated.

To set an aggregation method, we have to add `parameter-metadata` to the IMP file. This is where you can adjust how a parameter behaves.

## Parameter metadata

Parameter metadata has the following structure:

```
parameter-metadata:
  inputs:
    parameter-name:
    unit: 
    description:
    aggregation-method:
        time: 
        component:       
  outputs:
    parameter-name:
    unit: 
    description:
    aggregation-method:
        time: 
        component: 
```

For each input or output parameter used in a plugin, you add a block of yaml.

An ideal IMP file has parameter metadata set for every plugin, covering every parameter.

In the following snippet, parameter metadata is added for the `energy-to-carbon` plugin instance, which uses `energy` and `carbon-intensity` as inputs and returns `carbon`.

```yaml
energy-to-carbon:
  method: Multiply
  path: "builtin"
  config:
    input-parameters: ["energy", "grid-intensity"]
    output-parameter: "carbon"
    parameter-metadata:
      inputs:
        energy:
        unit: kWh
        description: Energy consumed in kWh.
        aggregation-method:
            time: sum
            component: sum  
        grid-intensity:
        unit: gCO2e/kWh
        description: Mass of carbon dioxide equivalent emitted per kWh of energy consumed.
        aggregation-method:
            time: sum
            component: sum      
      outputs:
        carbon:
        unit: gCO2e
        description: Mass of CO2e emitted.
        aggregation-method:
            time: sum
            component: sum    
```

Notice that the aggregation method for `carbon` is set to `sum` for both time and component aggregation - this is the method Impact Framework will use to aggregate `carbon` across time and components.

**Your task now is to add parameter metadata to your IMP so that both `carbon` and `sci` aggregation methods are set.**

However, note that `sci` is a rate of carbon emission. You want to **sum** it across components, but **average** it over time.

When you have added the parameter metadata, run your IMP using

```
if-run -m imp.yml -o outputs.yml
```
