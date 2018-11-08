# gh-site

## Windows setup

### Ruby + dev kit

Minimum 2.4+
https://rubyinstaller.org/downloads/

### Install Jeckyll gem

`gem install jekyll bundler`

Check version: `jekyll -v`

### Update deps

`bundle install`

### Paths needed for VS Code console support
Go to environment variables by searching (start menu) for PATH. The dialog that comes up will have a button called *Environment Variables*. Open that. From there find the PATH variable and click Edit. You need the following entries:

#### Ruby
Minimum v2.5 or above. Set this to wherever you installed Ruby
`d:\source\Ruby25-x64\bin`

#### Git
Depending on whether you installed git or github, you'll need to figure out where git is installed. For github in Windows 10 it is usually in a location that looks like this:

`C:\Users\[User]\AppData\Local\GitHub\PortableGit_[bunch of digits]\cmd`

## Shortcuts

### Run local site
`./_scripts/run.rb`

### Publish all local changes
`./_scripts/publish.rb`

### Create a new blog post
`./_scripts/post.rb "This is the title of my new post"`

