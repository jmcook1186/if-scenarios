The IMP your created in the previous exercise gnerated `carbon` and `sci` values for each timestep in the `inputs` array for each component.

Now, you can aggregate those values across time (to get a single representative value for the entire time period) and across components (to get aggregated time series for each level of the tree, right up to a compelte-system aggregate at the tree's root).

Toggling this is very easy. Add the following block of config yaml to your IMP, somewhere in the context section:

```yaml
aggregation:
  metrics:
    - carbon
    - sci
  type: both
```

Here, you are instructing Impact Framework to aggregate using *both* aggregation methods - time and component. You are also instructing Impact Frameowkr to do the aggregation for two metrics: `carbon` and `sci`. You can use any metric that's available in your `outputs`.

You can run your save IMP as `imp.yml` and run it using `if-run -m imp.yml -o outputs.yml`.
