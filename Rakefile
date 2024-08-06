# frozen_string_literal: true

require 'rake/clean'

# If no task given, build
task default: :build

# Support clean and clobber tasks
CLEAN << '_site'
CLOBBER << '_cache' << '.sass-cache'

desc 'Preview on a local machine'
task :serve do
  trap('SIGINT') { exit }
  jekyll 'serve', :incremental, :livereload
end

desc 'Build on a local machine'
task :build do
  jekyll 'build', :verbose, :trace
end

# See https://github.com/gjtorikian/html-proofer#configuration
COMMON_OPTIONS = {
  assume_extension: true,
  allow_hash_href: true,
  url_swap: { %r{https://localhost:4000/} => '' }
}.freeze

LIGHT_OPTIONS = {
  url_ignore: [
    'Unknown',
  ]
}.freeze

desc 'Check already built site'
task :checkonly do
  html_proofer COMMON_OPTIONS, LIGHT_OPTIONS
end

desc 'Check links and things'
task check: %i[build checkonly]

desc 'Stronger check for missing options - will show up as warnings on GHA'
task checkall: :build do
  html_proofer COMMON_OPTIONS
end

### Support functions ###

# Run the jekyll command, with arguments
# (symbols are long options, hashes are long options with arguments)
def jekyll(*directives)
  directives.map! do |x|
    case x
    when Symbol
      "--#{x}"
    when Hash
      x.map { |k, v| "--#{k}=#{v}" }.join(' ')
    else x
    end
  end
  sh "jekyll #{directives.join(' ')}"
end

# Run HTMLProofer
def html_proofer(*options)
  require 'html-proofer'
  begin
    HTMLProofer.check_directory('./_site', options.inject(:merge)).run
  rescue RuntimeError => e
    abort e.message
  end
end
