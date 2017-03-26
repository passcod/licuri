# Licuri

[![Greenkeeper badge](https://badges.greenkeeper.io/passcod/licuri.svg)](https://greenkeeper.io/)

![Licuri palm seeds](https://upload.wikimedia.org/wikipedia/commons/b/b2/Licuri.JPG)

_Compliant data:uri parser_

Uses an actual grammar (PEG.js syntax) derived from the [RFC] instead
of simple string operations and/or regex matching. Handles base64 and
plain text, supports content-type parameters. No runtime dependencies.

[RFC]: https://tools.ietf.org/html/rfc2397

## Install

```bash
$ npm install --save licuri
```

## Build

```bash
$ git clone git://github.com/passcod/licuri
$ cd licuri
$ npm run build
```

## Use

```javascript
var licuri = require('licuri');

var uri = licuri.parse('data:,foobar');
console.log(uri.data); //=> "foobar"
```

### Returned object synopsis

```json
{
  "raw": "Raw data as given in the uri",
  "data": "Decoded data, either from base64 or URL-encoding",
  "base64": false, "(bool": "Whether the data was base64-encoded)",
  "content": {
    "type": "Default: text",
    "subtype": "Default: plain",
    "params": {
      "Any": "parameter",
      "attached": "to",
      "the": "content-type"
    }
  }
}
```

## Community

- Released in the [Public Domain](https://passcod.name/PUBLIC.txt)
- PRs and issue/bug reports welcome
