Let's take a look inside the manifest file.

You can either switch over to the `editor` tab in the right-hand panel and click on `manifest-1.yaml` to open the file in the editor, or you can type `nano manifest-1.yaml` to open it in the terminal.

Either way, you will see the manifest file's yaml data presented on the screen.

*This file contains everything you need to compute the environmental impacts of this hypothetical website.*

At the very top of the file, the manifest is given a title, description and, optionally, any useful tags.

The manifest is divided into two parts: the **context** and the **tree**.

The context is where the manifest execution is configured, the manifest metadata is set and the plugins that will be executed are instantiated.

The tree is where the individual system components are defined, including the specific pipelines of plugins that will operate and the data collected about a component is provided. These can be organized into a heirarchy, with parent and child nodes nested to any depth. For exampel, you might have a component called `servers` with 100 individual servers defined as child nodes. However they are laid out, each component has the same simple structure, as follows:

```yaml
component-1:
  pipeline:
    compute:
    - a-plugin-instance
  defaults:
  inputs:
    - timestamp: '2024-07-22T00:00:00'
      duration: 86400
```

See if you can identify where the context and tree sections start and stop. try to identify some individual system components in the tree.

In the next steps, you will explore the manifest and understand how it is structured.

## Test your learning

1) What is the title of this manifest file?
2) True or False: individual system components are defined 
3) How many individual system components are there in this manifest?
