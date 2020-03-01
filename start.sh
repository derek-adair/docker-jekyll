docker run --rm --expose 4000 \
    --env-file .env-jekyll \
    # doesn't actually work for some reason, unable to get this to join the webproxy public network
    --network webproxy \
    --volume="$PWD/src:/srv/jekyll" \
    --volume="$PWD/src/vendor/bundle:/usr/local/bundle" \
    -it jekyll/jekyll:4.0 \
    bundle exec jekyll serve
