## Add SCI plugin

The Impact Framework standard library includes an `SCI` builtin.

All you have to do is define a functional unit in the plugin config and make sure `carbon` and whatever functional unit you define is available in your `inputs`.


```yaml
sci:
  method: Sci
  path: "builtin"
  config:
    functional-unit: site-visits
```

Make sure you have added `site-visits` to your `inputs`. 

That's it! Imapct Framework will calculate SCI and add it to your outputs.

Try it now with:

```
if-run -m manifest.yml -o outputs.yaml
```
