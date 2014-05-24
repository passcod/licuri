parser = require './grammar'

exports.parse = (str) ->
  ast = parser.parse str

  obj =
    base64: !!ast[2]
    raw: ast[4].join ''
    data: ''
    content:
      type: 'text'
      subtype: 'plain'
      params: {}

  if obj.base64
    obj.data = new Buffer(obj.raw, 'base64').toString('utf8')
  else
    obj.data = decodeURIComponent obj.raw

  type = ast[1]
  if contentType = type[0]
    obj.content.type = contentType[0].join ''
    obj.content.subtype = contentType[2].join ''
  
  if type[1].length > 0
    type[1].forEach (param) ->
      param = param[1]
      key = param[0].join ''
      val = param[2].join ''
      obj.content.params[key] = val

  return obj
