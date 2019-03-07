proc loop*(): cint =
  var n: cint = 0
  var i: cint = 2
  while dec(i) > 0:
    if i == 1:
      continue
    inc(n, i)
  n = 0
  i = 2
  while i > 0:
    if i == 1:
      dec(i)
      continue
    inc(n, i)
    dec(i)
  return n
