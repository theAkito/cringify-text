import clipper
from unicode import `==`, add, runes, runeLen, toUpper, toLower, toRunes, isWhiteSpace
from strutils import multireplace, isEmptyOrWhitespace

proc getText(): string =
  var text: string = ""
  while text == "" or text == "\n" or text.isEmptyOrWhitespace:
    "Post your text:".echo
    text = stdin.readLine
  return text.toLower

proc cringify: string {.discardable.} =
  let input: string = getText()
  var lastWasUpped = true
  result = newStringOfCap(input.runeLen)
  for rune in input.runes:
    if rune.isWhiteSpace:
      result.add rune
      lastWasUpped = true
      continue
    if rune == "i".toRunes()[0]:
      result.add "ii"
      lastWasUpped = false
      continue
    elif rune == "I".toRunes()[0]:
      result.add "ii"
      lastWasUpped = false
      continue
    if lastWasUpped:
      result.add rune
      lastWasUpped = not lastWasUpped
    else:
      result.add rune.toUpper
      lastWasUpped = true
  discard result.clip()

cringify()