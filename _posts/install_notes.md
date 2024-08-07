


Trying to install on my apple silicon mackbook pro


Using standard local install, I ran into this error
> An error occurred while installing mini_racer (0.6.4), and Bundler cannot continue.
> In Gemfile: mini_racer

Found this issue:
https://github.com/alshedivat/al-folio/issues/1080

searched on mini_racer GitHub and found this issue:
https://github.com/rubyjs/mini_racer/issues/270

That didn't work, same error. Went to
https://github.com/rubyjs/mini_racer/#supported-ruby-versions--troubleshooting

Realized I missed this error
> ERROR:  While executing gem ... (Gem::FilePermissionError)
>    You don't have write permissions for the /Library/Ruby/Gems/2.6.0 directory.

So doing

> sudo gem update --system


# Docker

add

https://stackoverflow.com/questions/69773109/how-to-fix-function-not-implemented-failed-to-initialize-inotify-errnoenos
