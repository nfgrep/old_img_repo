## Sept 11

Installed ruby -v 3.0.2 the other day. Just tried to reinstall rails for this version. After running `gem install rails` I tried to run `rails` and got the following:

```
rbenv: rails: command not found

The `rails' command exists in these Ruby versions:
  2.6.5
  2.7.1
```

I tried removing the older versions of rails:

```
nfg@rep bin % gem uninstall rails
nfg@rep bin % rails
Traceback (most recent call last):
	8: from /Users/nfg/.rbenv/versions/2.6.5/bin/rails:23:in `<main>'
	7: from /Users/nfg/.rbenv/versions/2.6.5/lib/ruby/2.6.0/rubygems.rb:303:in `activate_bin_path'
	6: from /Users/nfg/.rbenv/versions/2.6.5/lib/ruby/2.6.0/rubygems.rb:303:in `synchronize'
	5: from /Users/nfg/.rbenv/versions/2.6.5/lib/ruby/2.6.0/rubygems.rb:304:in `block in activate_bin_path'
	4: from /Users/nfg/.rbenv/versions/2.6.5/lib/ruby/2.6.0/rubygems/specification.rb:1420:in `activate'
	3: from /Users/nfg/.rbenv/versions/2.6.5/lib/ruby/2.6.0/rubygems/specification.rb:1438:in `activate_dependencies'
	2: from /Users/nfg/.rbenv/versions/2.6.5/lib/ruby/2.6.0/rubygems/specification.rb:1438:in `each'
	1: from /Users/nfg/.rbenv/versions/2.6.5/lib/ruby/2.6.0/rubygems/specification.rb:1449:in `block in activate_dependencies'
/Users/nfg/.rbenv/versions/2.6.5/lib/ruby/2.6.0/rubygems/dependency.rb:313:in `to_specs': Could not find 'activesupport' (= 6.1.4.1) - did find: [activesupport-6.0.3.6,activesupport-6.0.3.4,activesupport-6.0.3.3,activesupport-6.0.2.1,activesupport-4.2.11.3] (Gem::MissingSpecVersionError)
Checked in 'GEM_PATH=/Users/nfg/.gem/ruby/2.6.0:/Users/nfg/.rbenv/versions/2.6.5/lib/ruby/gems/2.6.0:/Users/nfg/.gem', execute `gem env` for more information
```

`gem unisntall` seems to have forgot to remove `Users/nfg/.rbenv/versions/2.6.5/bin/rails`.  
After manual removal things work:

```
nfg@rep bin % gem install rails
Fetching rails-6.1.4.1.gem
Successfully installed rails-6.1.4.1
Parsing documentation for rails-6.1.4.1
Installing ri documentation for rails-6.1.4.1
Done installing documentation for rails after 0 seconds
1 gem installed
nfg@rep bin % rails
rbenv: rails: command not found
nfg@rep bin % rbenv rehash
nfg@rep bin % rails
Usage:
  rails new APP_PATH [options]
...
```

As you can see I needed to do a manual rehash, which is strange.  
I was expecting to see a new shell script in `Users/nfg/.rbenv/versions/3.0.2/bin`, but:

```
nfg@rep bin % which rails
/Users/nfg/.gem/bin/rails
```

Maybe all of this is a result of an error in my `.zshrc`, or perhaps an update to rbenv or gem.

Things to look at tomorrow:

- resource routes
- controller function name conventions
