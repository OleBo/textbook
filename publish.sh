# install the plugins and build the static site
make build

# checkout to the gh-pages branch
git checkout gh-pages

# pull the latest updates
git pull origin gh-pages --rebase
git rebase master

# copy the static site files into the current directory.
cp -R _site/* .

# remove 'node_modules' and '_book' directory

# add all files
git add .

# commit
git commit -a -m "Update docs"

# push to the origin
git push origin gh-pages

# checkout to the master branch
git checkout master