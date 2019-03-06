proc loop*(): cint =
  var n: cint
  var i: cint = 2
  while dec(i) > 0:
    inc(n, i)
  return n
