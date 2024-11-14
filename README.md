# modular-forge

The conda-based package repository for Mojo and Python packages.


## Submitting packages

To submit a package to modular-forge you just need to fork this repository and create a pull request with your changes.
Create a new directory for your package and copy and adjust the `recipe.yaml` file from another package.

You can test your recipes locally by running `pixi run build <package-name>`.

The full documentation for the recipe format can be found in the [rattler-build documentation](https://prefix-dev.github.io/rattler-build/latest/reference/recipe_file/).
