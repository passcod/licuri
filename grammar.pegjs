start
  = dataurl

dataurl
  = "data:" ( mediatype ) ? ( ";" base64 ) ? "," data

base64 "base64"
  = "base64"

mediatype "mediatype"
  = type ? ( ";" parameter ) *

type
  = maintype "/" subtype

maintype "type"
  = ident

subtype "subtype"
  = ident

data "data"
  = urlchar:.+

parameter
  = attribute "=" value

attribute
  = ident

value
  = ident

ident
  = string:[^/,=;]+
