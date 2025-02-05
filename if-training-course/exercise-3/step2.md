In the previous step, you created an output file, `outputs.yml`.

Here, we'll look at that file and aim to understand what Impact Framework *did* with your manifest file.

## Manifest data

The first thing to notice is that the output file contains all the same information that was in your manifest. All the plugin declarations, configuration, components, the layout of the tree - it's all there, identically to the original manifest. This is important because it allows others to re-execute your output file. The manifest data is your "working out" - having it here alongside your output data allows others to audit your process as well as your numbers.

Crucially, there are several new sections that have been added to the manifest. These new sections are:

## `execution`

The `execution` section captures the details of the runtime environment that just executed your manifest. This includes details about your operating system, Nodejs and Imapct Framework versions, the date and time the manifest was run, and the packages that are installed in your environment. There is also a `status` field that can either be `success` or `fail`. If the status is `fail`, then the error message is captured and reported here so you can see why your run failed to execute.

## `outputs`

For each component, the results from the execution of each plugin is added to an `outputs` section. In this example, there is only one plugin that returns a single value, so `outputs` is identical to `inputs` but with one additional field - `carbon`.

```yaml
inputs:
- timestamp: 2023-08-06T00:00
    duration: 3600
    energy: 0.05
outputs:
- timestamp: 2023-08-06T00:00
    duration: 3600
    energy: 0.05
    carbon: 8.15
```

## Test your learning

1) Try adding another plugin to your pipeline. It doesn't matter what it does, as long as it adds another entry in `outputs`. Observe the additional output being added to `outputs`
   
2) Try passing your output file to Impact framework. Notice that Impact Framework can run your output file as if it were a fresh manifest! 
