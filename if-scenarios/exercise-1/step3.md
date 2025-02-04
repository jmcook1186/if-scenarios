Now you know how the manifest is structured, you can run the manifest.

To do this, use the `if-run` command, passing the path to the manifest file, as follows:

`if-run -m manifest-1.yaml` 

You will see new yaml data displayed in your terminal.

Impact framework has taken your manifest file, executed each plugin in each pipeline, and added the output data to your file in a new block of yaml named `outputs`.

Every component has its own `outputs` section. Inside is the `input` data plus any new fields created during the execution of the plugins.

For example:

```yaml
memory:
    pipeline:
    compute:
        - memory-coefficient-correction
        - memory-energy
        - energy-to-carbon
        - sci
    defaults:
    grid-intensity: 165
    inputs:
    - timestamp: '2024-07-22T00:00:00'
        duration: 86400
        site-visits: 228
        memory-gb: 3
    outputs:
    - timestamp: '2024-07-22T00:00:00'
        duration: 86400
        site-visits: 228
        memory-gb: 3
        grid-intensity: 165
        memory-coefficient: 0.5644799712
        energy: 1.6934399136000002
        carbon: 279.41758574400006
        sci: 1.2255157269473687
```

You will also notice that fields named `aggregated` have also been created. Each `aggregate` section contains the aggregated values for `carbon` and `sci` from all the nodes in the tree below it. There is an `aggregate` block for every level in the tree, right up to the root, whgere the aggregated values for the entire system are found.

Finally, you'll also find a new section called `execution` added to the original manifest. This captures the details of the environment used to run this manifest.

You also have the option to redirect the output to a file instead of the terminal. To do this, use the `--output` or `-o` command, as follows:

```
if-run -m manifest-1.yaml -o output-1.yaml
```

Your output file will be saved next to your manifest file.
