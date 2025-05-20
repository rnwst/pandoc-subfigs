# pandoc-subfigs

`pandoc-subfigs` enables subfigures to be created in pandoc's Markdown.


## Usage

To run the Lua filter, place the `subfigs.lua` in a location [accessible to pandoc](https://pandoc.org/MANUAL.html#option--data-dir) and execute pandoc with the option `-L subfigs.lua`.

To create subfigures, place the subfigures in a [Div](https://pandoc.org/MANUAL.html#divs-and-spans) of class `subfigs`. The first paragraph found in the Div is used as the figure's caption. Using the [`fenced_divs`](https://pandoc.org/MANUAL.html#extension-fenced_divs) extension (which is enabled by default):
```md
:::subfigs
The figure caption.

![Subfigure 1 caption.](figs/subfig1.png){#subfig1}

![Subfigure 2 caption.](figs/subfig2.jpg){#subfig2}
:::
```
Alternatively, according to preference, the figure caption may be placed at the bottom of the Div (as long as it is still the first paragraph in the Div).
