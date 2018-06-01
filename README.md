# LaTeX Template for MSc Thesis Report

Hi, and welcome to the README of the templateThesis repository. In this file, I will guide you through the use of this template, and its features.

## Usage

To copy this template on your computer you have three main ways:
- you can [download](https://github.com/mfacchinelli/templateThesis/archive/master.zip) this repository as a `.zip` file (also, you can click on 'Clone or Download')
- you can open this repository in the GitHub Desktop app, by clicking on 'Clone or Download'
- or, you can clone it via `git`, by using:
	```
	cd ~/template # or whichever other directory you want
	git clone https://github.com/mfacchinelli/templateThesis
	```

If you usually run LaTeX files locally on your computer, you may want to use GitHub Desktop, or the `git` command. Otherwise, if you are used to ShareLaTeX or Overleaf (or some other online LaTeX program), I would recommend downloading the `.zip` file and then importing that on the website. 

## Features

This template comes with two pre-installed `.tex` files that will probably prove to be very useful to you, if, like me, you often use math symbols and abbreviations in your reports. These files are included in the `support` folder, and contain:

- `math.tex`: a series of commands for mathematical symbols (find out more [here](#math-commands))
- `tags.tex`: three useful commands for creating PDF tags that appear while hovering your mouse over a word (find out more [here](#mouse-hover-tags))

### Math Commands

This part I had initially taken from Chris Clark's [website](http://www.dfcd.net/), where he made available a LaTeX [header](http://www.dfcd.net/articles/latex/header.tex) for physicists. I have extensively modified and extended this file, but the least I can do is to give credit to his work. 

Some of the commands that might prove useful are the `\v{}` command, to write vectors (both Latin and Greek letters are supported), the `\uv{}` command, to write unit vectors, the `\dif` command to print the differential symbol 'd', etc. There are also abbreviations to math structures that I used frequently, such as the `\vthree{}{}{}` command that prints a column vector of three elements, the `\quaternion` command that as the name suggests prints the quaternion vector and the `\rx{}`, `\ry{}` and `\rz` commands to print the three rotation matrices. 

You can find out for yourself the remaining commands by having a look at this file. Also, in the PDF provided in this repository, you can find examples on how these commands look when used. 

### Mouse-Hover Tags

This feature is definitely my favorite :heart:. What it does is to show the expansion of an abbreviation when the reader hovers his mouse over the abbreviation. Note that this feature only works with Adobe Reader (well, at least it does not work with Preview, if you have a Mac). Also, it only works on electronic versions of the document :wink:. 

To use these tags, you need to use the `\abbr{}` command. Inside the curly brackets you insert the abbreviation, and the command selects automatically the expansion to show. Note however, that the abbreviations need to be manually input in the `support/tags.tex` file, and do not load directly from the list of abbreviations (`support/abbreviations.text`). 

Two other commands are available and have a similar purpose as the `\abbr{}` command. These are `\citeframe{}` and `\citefframe{}`. If you use reference frames a lot in your thesis, they will be very handy. The first command refers to a reference frame by printing 'X-frame' (where X is the symbol used to refer to the frame), and it is called by simply typing `X` as input for the `\citeframe{}` command. The second one, on the other hand, prints the frame in the format 'F<sub>X</sub>'. In this way, you can alternate between the two methods, such that there is some variety in the text. Also for these two commands, when the reader hovers his mouse over 'X-frame' or 'F<sub>X</sub>', she/he will see something like 'Inertial Planetocentric Reference Frame' (if that is the name of the X-frame). 

### Title and Cover Pages

