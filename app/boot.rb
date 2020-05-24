require_relative 'environment'

loader = Zeitwerk::Loader.new
loader.push_dir('app')

unless ENV['RACK_ENV'] == 'production'
  loader.enable_reloading
  loader.log!
  Listen.to('app') { loader.reload }.start
end

loader.setup
