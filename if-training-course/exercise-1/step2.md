

The context contains all the project configuration, including loading in all the plugins you want to run. 

A plugin instantiation looks as follows:

```
duration-to-hours:
    path: builtin
    method: Coefficient
    config:
        input-parameter: duration
        coefficient: 0.000278
        output-parameter: duration-in-hours
```

The first line is the name for that specific plugin instance. There might be several occasions in your IMP when you want to use the same plugin (`Sum`, `Multiply`, etc). Giving it a specific name that will allow you to invoke this particular instance with its particular config will help you to organize your IMP and understand the purpose of each plugin instance. In the example above, the instance is for converting the given `duration` from units of seconds to hours.

The `path` is the path where the plugin is installed. For our standard library of plugins (or "builtins") the right path is `builtin`. For others, it is the name of the plugin's folder in your local `node_modules`.

The `method` is the plugin type you are executing. Here it is `Coefficient` because we want to multiply one of our input values by coefficient. The `method` should always be provided in a plugin's README documentation. It is the name of the function beign exported by the plugin.

Each plugin also has `config`. The fields available in `config` vary between different plugins. They always have `input-parameter`s which tell the plugin which values to access from your `inputs` data. They also usually have an `output-parameter` which defines what name to use for the plugin's result when it is added to your `outputs`. In this case, the plugin also has a `coefficient` key, which is where you define the value of the coefficient to multiply your input parameter by.


This pattern is repeated for every plugin instance.

## Test your learning

1) How many plugins are instantiated in this IMP?
2) How many instances of the `Multiply` plugin are used in this IMP?
3) The result of the `memory-energy` plugin is going to be added to the `outputs` array under what name?
4) Which parameters are going to be multiplied together when the `cpu-factor-to-wattage` plugin instance is executed?
