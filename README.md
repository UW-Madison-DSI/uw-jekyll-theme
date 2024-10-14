<p align="center">
  <div align="center">
    <img src="./images/logos/uw-crest.svg" alt="Logo" width="150">
  </div>
</p>

# Open Source Program Office (OSPO)

This is a website for the University of Wisconsin's Open Source Program Office:
[http://ospo.wisc.edu](http://ospo.wisc.edu)

<img src="images/screen-shots/home.png" align="center" style="border:2px solid grey">
<div align="center">OSPO Web Site</div>

## Dependencies

This website is built upon following tools and frameworks:

- [Al-Folio](https://github.com/alshedivat/al-folio)
- [Jekyll](https://jekyllrb.com)

## Running

### `rbenv` Ruby environment

If you have a `rbenv` environment setup already, you can build and run the website as a Jekyll app with

```
sh run.sh
```

The application will be visible at the following url:
```
http://127.0.0.1:4000
```

### `pixi`

Even easier is to use the included `pixi` project.

[Install `pixi`](https://pixi.sh/latest/#installation) and then (optionally) from the top level of the repository run

```
pixi install
```

Then use the `pixi` task runner to execute the tasks defined in `pixi.toml`.

First install the local Ruby `bundle`

```
pixi run install
```

and then run any defined task with `pixi run`, such as building and serving the website at `http://127.0.0.1:4000`

```
pixi run serve
```

The canonical

```
pixi run start
```

runs the `install` and `serve` tasks.

<!-- LICENSE -->
## License

Distributed under the MIT License. See `LICENSE` for more information.

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgments

This website was made possible by the [Open Source Program Office](https://ospo.wisc.edu) at the UW-Madison [Data Science Institute](https://dsi.wisc.edu).
