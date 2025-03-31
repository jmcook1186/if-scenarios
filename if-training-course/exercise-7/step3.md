##  Examine the outputs

Your `outputs.yml` file has now been processed, including the `carbon` and `sci` aggregation.

Open `outputs.yml` in your editor.

Notice that each component has a new field that looks as follows:

```yaml
aggregated:
  carbon: 538.0593628253424
  sci: 1.3376259797138175
```

These blocks include the time-aggregated `carbon` and `sci` values for each time series.

There was one component (`component-2`) in the IMP that was composed of two children (`child-component-1` and `child-component-2`).

Notice that `component-2` has its own `outputs` secton in `outputs.yml` even though it did not have its own `inputs` section in `imp.yml`.

This is because a new `outputs` block was added by Impact Framework to contain the aggregated time series from `child-component-1` and `child-component-2`.

You can check the aggregation by manually calculating the element-wise mean of the individual `sci` values in `child-component-1` and `child-component-2` and verifyiogn that they are the `sci` values in `component-2: outputs`. Then do the same for `carbon`, verifying that the `carbon values` in `component-2: outputs` are the element-wise sums of the `carbon` values in `child-component-1` and `child-component-2`.
