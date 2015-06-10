# Array Consistent Sample
[<img src="https://travis-ci.org/songkick/array_consistent_sample.svg?branch=master">](https://travis-ci.org/songkick/array-consistent-sample)

Select pseudo-random members from arrays, but always get the same results given
the same array contents and arguments over time.

## Requirements

Supports Ruby 1.8.7 and 1.9.3+ however, you will need the
[backports](https://rubygems.org/gems/backports) gem installed to get
`Array#sample` and `Random` for Ruby 1.8.7.

## What problem does this solve?

This gem was built to spread load over background job servers for tasks that
don't need to run on every background server. We take a consistent sample from
the set of currently running background servers with the job name to vary the
results and spread load. If a previously selected background server goes away,
a different one is consistently selected from the new set.

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
