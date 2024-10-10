import UIKit

var sampleText = "Here is a sample sentence."
var textList = sampleText.components(separatedBy: CharacterSet.whitespacesAndNewlines)

//for word in sampleText {
//    textList.append(word)
//}
print(textList)

var someString = "currentWord"
var typing = "curr"

var correctSubstring = someString.prefix(typing.count)

print(correctSubstring)

if typing == correctSubstring {
    print("true")
} else {
    print("false")
}
