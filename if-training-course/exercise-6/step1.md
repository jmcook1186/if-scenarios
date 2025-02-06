So far, your manifests have only had a single element in the inputs array. However, many applications will actually track usage metrics over time. Therefore inputs will often be a time series.

Try creating multiple entries in your `inputs` array.

Remember, each timestep must have a unique `timestamp` and a `duration`. 

You can vary the values for each field in each element.

Save your manifest as `manifest.yml` and run it using:

```
if-run -m manifest.yml -o outputs.yml
```
