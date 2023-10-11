## homepage + blog + projects

I'm a [Jekyll](https://jekyllrb.com/)-powered website (for the most part)

Visit me https://jamiedubs.com

# Setup/usage

Check out this repository and checkout the various git submodules

```sh
git submodule init
git submodule update
git submodule status
```

Install ruby + bundler for your platform. YMMV

Install dependencies

```sh
bundle install
```

For development, run a local server:

```sh
bundle exec jekyll serve
```

alternately you can use `jekyll build --watch --incremental`

For production, just build the site: 

```sh
bundle exec jekyll build
```

Other helpful jekyll commands:

```sh
bundle exec jekyll doctor
```
