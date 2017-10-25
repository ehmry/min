import strutils
import nre

var
  currentLine = 1
  oldLine = 0
  sourceFile = open("parser2.nim")

for line in lines "parser.ndi":
  let
    fields = line.split('\t')
    (origName, mangledName, path, row, column) = (fields[0], fields[1], fields[2], fields[3].parseInt, fields[4])
  if path == "/home/peter/min/core/parser.nim":
    while currentLine < row:
      currentLine += 1
      discard sourceFile.readLine()
    if currentLine != oldLine:
      let definition = sourceFile.readLine()
      if definition.startsWith("proc"):
        #echo origName & " -> " & mangledName
        echo definition.replace(re""" *= *\".*\"""", ": string").replace(re"""{\..*\.}""","").replace(re""" *= *$""", "").replace("*(","(") & " {.importc, extern:\"" & mangledName & "\".}"
      oldLine = currentLine
      currentLine += 1
