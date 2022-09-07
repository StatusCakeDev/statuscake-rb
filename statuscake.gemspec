# frozen_string_literal: true

# StatusCake API
#
# Copyright (c) 2022
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to
# deal in the Software without restriction, including without limitation the
# rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
# sell copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
# FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
# IN THE SOFTWARE.
#
# API version: 1.0.0
# Contact: support@statuscake.com
#
# Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'statuscake/version'

Gem::Specification.new do |s|
  s.name                  = 'statuscake-rb'
  s.version               = StatusCake::VERSION
  s.platform              = Gem::Platform::RUBY
  s.authors               = ['StatusCake']
  s.email                 = ['support@statuscake.com']
  s.homepage              = 'https://github.com/StatusCakeDev/statuscake-rb'
  s.summary               = 'StatusCake API client'
  s.description           = 'StatusCake is a website monitoring and APM platform optimized for developer and operations productivity.'
  s.license               = 'MIT'
  s.required_ruby_version = '>= 2.4'
  s.metadata              = { 'rubygems_mfa_required' => 'true' }

  s.files         = Dir.glob('{bin,lib}/**/*').uniq.sort.reject(&:empty?)
  s.executables   = []
  s.require_paths = ['lib']
end