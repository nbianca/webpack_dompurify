#!/usr/bin/env ruby
require "mini_racer"

ctx = MiniRacer::Context.new(timeout: 15000)
ctx.eval("window = {}")
ctx.attach("console.log", proc { |l| p l })

ctx.load("../discourse/app/assets/javascripts/discourse-loader.js")
ctx.load("dist/main.js")

p ctx.eval("console.log('hey')")
