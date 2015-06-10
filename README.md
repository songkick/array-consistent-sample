# Array Consistent Sample
[<img src="https://travis-ci.org/songkick/array-consistent-sample.svg?branch=master">](https://travis-ci.org/songkick/array-consistent-sample)

Calling `Array#consistent_sample` works like `Array#sample`, but produces
consistent output if:
* the Array's contents are unchanged
* the arguments to `#consistent_sample` are the same

## Requirements

Supports Ruby 1.8.7 and 1.9.3+. However, for Ruby 1.8.7, you will need the
[backports](https://rubygems.org/gems/backports) gem installed so that
`Array#sample` and `Random` will be available.

## What problem does this solve?

This gem was built to spread load over background job servers for tasks that
don't need to run on every background server. Single or multiple background
server names can be consistently sampled from a set of currently running
background servers, with job names passed to vary the results and spread
load. If, hypothetically, a previously selected background server goes away, a
different one is consistently selected from the altered set of background
servers.

## Examples

    people = ['Sally', 'Bob', 'Alice', 'Joe']

The same array and same arguments always gets you the same results (results may
vary between Ruby versions and platforms, but should be consistent for that
same Ruby and platform).

    people.consistent_sample(1)
    # => ["Sally"]
    people.consistent_sample(1)
    # => ["Sally"]

You can pass an optional second parameter to vary the sample.

    people.consistent_sample(1, 'Mow the lawn')
    # => ["Alice"]

    people.consistent_sample(2, 'Sort recycling')
    # => ["Sally", "Alice"]

    people.consistent_sample(2, 'Wash the dishes')
    # => ["Bob", "Joe"]

    people.consistent_sample(3, 'Bring about world peace')
    # => ["Bob", "Alice", "Joe"]
