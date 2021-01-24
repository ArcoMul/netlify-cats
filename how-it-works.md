# How it works

Curious how the cat images appear on the demo page after your pull request got merged into the main branch? A short explanation.

## Netlify

This repository is linked to netlify.com. Netlify is a company which offers a service to host static build websites. Static builds websites are websites which (in general) don't have many dynamic elements. A newspaper website could be a static website because the content is the same for everyone. Facebook is a non-static website as everybody sees different content.

So Netlify takes the content of this repository and hosts it on a page. There is a step in between though. As you can see this repository doesn't have an index.html. That file get automatically generated.

## Build step

When Netlify detects that the repository has changed it will first 'build' the static website. The build step will generated an index.html which then can be used for the static website. To generate this index.html Netlify needs build instructions. The instructions for this repository are located in [build.sh](build.sh).

## build.sh

The build file is a shell file. It can be executed on the command line. When opening the file you will see that the file contains a lot of command line instructions. These are commands which you can also execute in your terminal. What this file does in the end is putting the content of header.html in a file called index.html. Then it finds all the images in the folder called cats and adds for every image an `<img>` tag to the index.html file. When all the images are in there footer.html is also appended to index.html. Al lof this results in an index.html with all the necesarry html elements, and a list of images.

When visiting the demo page the index.html file is loaded and we are able to see all the cat images.