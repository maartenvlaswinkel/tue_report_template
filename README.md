# TU/e report template
## How to set this template to your own project
If you don't want to use git, simply clone the repository to your desired location with
```
git clone https://github.com/maartenvlaswinkel/tue_report_template.git
```
Afterwards, remove the '.git' folder and '.gitignore' file (these might be hidden).

To use in your own git repository, clone the original repository and change the origin to your own repository
```
git clone https://github.com/maartenvlaswinkel/tue_report_template.git
git init
git remote set origin https://github.com/USERNAME/REPOSITORY.git
git push -u master origin
```

## How to use this template
This template works best with [MiKTeX](https://miktex.org/), [latexmk](https://mg.readthedocs.io/latexmk.html) and an editor you like.

Simply run the command `latexmk` with a command prompt/terminal in the main folder of your report.

To change the name of the output file, change `<OUTPUT_NAME>` in the line `$jobname = '<OUTPUT_NAME>';` to whatever you like.
