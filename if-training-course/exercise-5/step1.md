
The SCI score is calculated as follows:

`SCI = (E*I + M) / R`

Where `E` is operational energy, `I` is carbon intensity, `M` is embodied carbon and `R` is the functional unit.

In the previous example, you did

`C = (E*I) + M`

So what remains is to determine a functional unit and divide your `carbon` value by it to yield SCI.

Open your IMP (`boilerplate.yml`). It contains everythign you did to complete the previous exercise, and it calculates `carbon`.

## Choosing a functional unit

Let’s say your application is a website. A suitable functional unit would be unique visits per day. This gives an idea of how carbon efficient your application is, as reducing the SCI score means reducing the carbon emitted by each user. 

For other applications, the functional unit is likely to be different. Here's some possible functional units:

- AI model: prompts, training cycles
- APIs: requests
- Mobile apps: downloads, unique users
- Databases: gigabyte of storage space
- Blockchains: transactions, active validators

There is no definite correct functional unit. It comes down to a subjective decision about what data is available, what makes sense conceptually, and what is used by other similar applications that you want to be comaprable to.

You can simply add `site-visits` to your input data, let’s say there were 550 visits. In a real application, this information could come from a service like google analytics.


## Test your learning

1) Can you think of some appropriate functional units for other software systems? For exampel, operating systems, games, web browsers, graphics processors, CMS...
   
