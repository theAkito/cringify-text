import clipper
from unicode import add, runeAt, runeLen, toUpper, toLower
from strutils import multireplace

proc getText(): string =
  var text: string = ""
  while text == "" or text == "\n" or text == " ":
    "Post your text:".echo
    text = stdin.readLine
  return text.toLower

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
    if itimUp >= inputText.runeLen: break
    elif itimStd >= inputText.runeLen: break
  cringifiedText = cringifiedText.multireplace(replacements = ("i", "ii"), ("I", "ii"))
  discard cringifiedText.clip()

cringify()