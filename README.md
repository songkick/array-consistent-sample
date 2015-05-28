# Array Deterministic Sample

Select random members from an array, but always get the same results for the
same array and arguments.

## Requirements

Supports Ruby 1.8.7+ but you will need the
(backports)[https://rubygems.org/gems/backports] gem installed to get
`Array#sample` for Ruby < 1.9.1 and `Random` for Ruby < 1.9.2

## Examples

    people = ['Sally', 'Bob', 'Alice', 'Joe']

The same array and same arguments always gets you the same results (results may
vary between Ruby versions and platforms, but should be consistent in a given
Ruby version).

    people.deterministic_sample(1)
    # => ["Sally"]
    people.deterministic_sample(1)
    # => ["Sally"]

You can pass an optional second parameter to vary the sample.

    people.deterministic_sample(1, 'Mow the lawn')
    # => ["Alice"]

    people.deterministic_sample(2, 'Sort recycling')
    # => ["Sally", "Alice"]

    people.deterministic_sample(2, 'Wash the dishes')
    # => ["Bob", "Joe"]

    people.deterministic_sample(3, 'Bring about world peace')
    # => ["Bob", "Alice", "Joe"]
