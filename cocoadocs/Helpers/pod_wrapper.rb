# TODO
# * On deploy set BUNDLE_ROOT to the bundle dir inside the plugin
# * Ideally this would use the sandboxed version, but that's for later.
# * Use newer versions that the user might have installed through RubyGems?

BUNDLE_ROOT = File.expand_path('../../../vendor/bundle', __FILE__)

require File.join(BUNDLE_ROOT, 'bundler/setup')
require 'cocoapods'

Pod::Command.run(ARGV)
