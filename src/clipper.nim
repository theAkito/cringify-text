from sdl2_nim/sdl import setClipboardText, hasClipboardText, init, INIT_VIDEO, quit

proc clip*(text: string): bool =
  ## Copies input text to clipboard.
  ## False on empty input text and
  ## on empty clipboard after copy.
  ## True on success.
  if text != "":
    let 
      init = sdl.init(INIT_VIDEO)
      copied = text.setClipboardText
    if copied == 0:
      sdl.quit()
      return true
    else:
      # If text failed to be
      # clipboarded.
      sdl.quit()
      return false
  else:
    # If text is empty.
    return false
  if not hasClipboardText():
    # If clipboard is empty or
    # does not exist.
    return false
