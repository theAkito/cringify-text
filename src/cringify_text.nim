import clipper
from unicode import add, runeAt, runeLen, toUpper
from strutils import multireplace

proc getText(): string =
  let text: string = stdin.readLine
  case text
  of "", "\n", " \n":
    "Text cannot be empty.".echo
  else:
    return text

proc cringify() =
  let
    inputText: string = getText()
  var
    iter = 0
    itimStd = 0
    itimUp = 1
    cringifiedText: string
  while iter <= inputText.runeLen:
    cringifiedText.add(inputText.runeAt(itimStd))
    cringifiedText.add(inputText.runeAt(itimUp).toUpper)
    itimStd += 2
    itimUp += 2
    iter.inc
    if itimUp >= inputText.runeLen:
      break
    elif itimStd >= inputText.runeLen:
      break
  cringifiedText = cringifiedText.multireplace(replacements = ("i", "ii"), ("I", "ii"))
  discard cringifiedText.clip()

cringify()