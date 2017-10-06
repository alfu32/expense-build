$SRC=($sourceOrg)/($sourceRepo)


heroku create ($applicationName)
git clone https://github.com/($SRC).git

git clone https://git.heroku.com/($applicationName).git

cp -r $sourceRepo/dist/* ($applicationName)

cd ($applicationName)
heroku git:remote ($applicationName)
heroku buildpacks:set https://github.com/heroku/heroku-buildpack-static

commit