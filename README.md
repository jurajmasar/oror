# Object#oror gem

Inspired by the awesome [andand gem](https://github.com/raganwald/andand).

`||` operator works just fine in most of the cases:

```
false || 'alternative' == 'alternative'
nil || 'alternative' == 'alternative'
```

However, sometimes you might wish for a different behavior:

```
'' || 'alternative' == '' 
"\t\n\r" || 'alternative == "\t\n\r"
```

That's where **oror** comes in:

```
false.oror 'alternative' == 'alternative'
nil.oror 'alternative' == 'alternative'
''.oror 'alternative' == 'alternative' 
"\t\n\r".oror 'alternative == 'alternative' 
```

No more `value.present? ? value : 'alternative'`.

# Installation

* Run `gem install oror` 
* or add `gem 'oror'` into your `Gemfile` and run `bundle install`

# License

Released under MIT license.
