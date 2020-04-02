export JEKYLL_VERSION=4.0
docker run --rm  --volume="$PWD:/srv/jekyll" -it jekyll/jekyll:$JEKYLL_VERSION jekyll new src 
