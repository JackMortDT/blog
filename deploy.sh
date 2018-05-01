#! /bin/bash
echo "1.- Add some text to make a great commit"
read comm

sl

echo "2.- Adding a pushing your changes"
git add -A
git commit -m "$comm"
git push origin master

echo "3.- Repository updated"

echo "3.- Updating a static blog content"
rm -rf public/*
hugo --buildDrafts
cd public
git checkout master
touch CNAME
echo luissas.me >> CNAME
git checkout master
git add -A
git commit -m "$comm"
git push origin master --force
echo "4.- Changes in your blog D:"
cd ..
git add -A
git commit -m "$comm"
git push origin master --force
echo ":D"
