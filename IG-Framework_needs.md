OK here are my thoughts on the IG:

1.  Agree will need to create a  simple on-ramp for editors
  - so they don't have to worry about:
      1. definitions (ig.json) or ig resource (ig.xml)
      1. templates
      1. html files
      1. jekyll
      1. liquid syntax
      1. front matter
      1. table of contents/site map
      1. links ( ok they will need to worry about linking but need to make this simpler and this will be important)
  - can just upload files to a folder and voila
      1. preferably markdown/kramdown
      1. ( issue right now is templates require the narrative to be split into separate files)
  - supports simple table creation  (i.e. import a csv to a folder)
  - suppports images  ( i.e. download an image to folder)
  - is pretty and modern web design  ( I find the style of your igs book-like and not sexy at all  - like Smart's site or here http://planetjekyll.github.io/showcase/)
      1. Need to be clear when link to external site that looks and feels the same ( this is an issue with my IG  -  I'm a CSS novice so I steered clear of styling for now)
      1. Need to absolutely update the standard set of templates away from the FHIR spec look.  - that is the first thing that Josh said - need to be simple and accessible and most of the information in the first page of a menu item.  most of us are going to not scroll down and instead scan for examples.
      1. NO table of contents instead a site map buried somewhere for those who are interested.  The web site should be obvious.
        - this is why ig.xml is an essentially useless artifact for me.  Jekyll does or can do most of the heavy lifting.
    - To this end I created a [template file](http://build.fhir.org/ig/Healthedata1/IG-Template/) to show how to create all the artifacts and the basic output of a standard looking IG.  Its not perfect or complete by any means but it is good to be first.  It really needs a web designer.
    - So the Framework is important step in that direction.  I had assumed that Furore would evolve into this.  Maybe can leverage Gitgub to do it.  it already haa a lot of this funcionality already. -- just load your files to two or three git folders and you are good to go...... 
