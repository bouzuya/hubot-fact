# hubot-fact

A hubot script that calculate factorials

See [`src/scripts/fact.coffee`](src/scripts/fact.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install bouzuya/hubot-fact --save`

Then add **hubot-fact** to your `external-scripts.json`:

```json
["hubot-fact"]
```

## Sample Interaction

```
bouzuya> hubot fact 3
hubot> 3! = 6
```

## Badges

[![Build Status][travis-image]][travis-url]
[![Coverage Status][coveralls-image]][coveralls-url]
[![Dependency Status][daviddm-image]][daviddm-url]

## License

MIT

[travis-url]: https://travis-ci.org/bouzuya/hubot-fact
[travis-image]: http://img.shields.io/travis/bouzuya/hubot-fact/master.svg?style=flat
[daviddm-url]: https://david-dm.org/bouzuya/hubot-fact.svg?theme=shields.io
[daviddm-image]: http://img.shields.io/david/bouzuya/hubot-fact.svg?style=flat
[coveralls-url]: https://coveralls.io/r/bouzuya/hubot-fact
[coveralls-image]: http://img.shields.io/coveralls/bouzuya/hubot-fact/master.svg?style=flat
