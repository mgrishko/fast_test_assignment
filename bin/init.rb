#!/usr/bin/env ruby

require_relative '../computer'

ds = DS.new
workstation1 = Computer.new(1, ds)
p workstation1.mouse
p workstation1.cpu
p workstation1.keyboard

workstation2v = Computer2v.new(1, ds)
p workstation2v.mouse
p workstation2v.cpu
p workstation2v.keyboard

workstation3v = Computer3v.new(1, ds)
p workstation3v.mouse
p workstation3v.cpu
p workstation3v.keyboard
