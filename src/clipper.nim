from sdl2_nim import setClipboardText, hasClipboardText

proc clip*(text: string): bool =
  if text != "":
    text.setClipboardText
  else:
    "Input text cannot be empty!".quit
  if not hasClipboardText:
    "Copy to clipboard has failed.".quit