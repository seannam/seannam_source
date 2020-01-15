#!/usr/bin/env bash
# set -e # halt script on error

set -e

DEPLOY_REPO="https://${MY_WEBSITE}@github.com/seannam/seannam.github.io.git"

function main {
	clean
	get_current_site
	build_site
	deploy
}

function clean { 
	echo "cleaning _site folder"
	if [ -d "_site" ]; then rm -Rf _site; fi 
}

function get_current_site { 
	echo "getting latest site"
	git clone --depth 1 $DEPLOY_REPO _site 
}

function build_site { 
	echo "building site"
	bundle exec jekyll build --trace
	#bundle exec htmlproofer ./_site --url-ignore "https://bit.ly/snam-li", "https://jasondoesstuff.com/unfollowing-twitter-experiment/", "/blog/2/index.html", "/blog/index.html"
}

function deploy {
	echo "deploying changes"

	if [ -z "$TRAVIS_PULL_REQUEST" ]; then
	    echo "except don't publish site for pull requests"
	    exit 0
	fi  

	if [ "$TRAVIS_BRANCH" != "master" ]; then
	    echo "except we should only publish the build branch. stopping here"
	    exit 0
	fi

	cd _site
	git config --global user.name "Travis CI"
    git config --global user.email namsangwoo1+travis@gmail.com
	git add -A
	git status
	git commit -m "Latest site built on successful travis build $TRAVIS_BUILD_NUMBER auto-pushed to github"
	git push $DEPLOY_REPO master:master
}

main