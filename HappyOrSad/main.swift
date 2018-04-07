//
//  main.swift
//  HappyOrSad
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()

// Print out the input provided

//print("You said:")
//print(rawInput)

// Make sure the input is not nill
//(unwrap the optional)
guard let input = rawInput else{
    //if we got here, imput is nil, so quit program
    exit(9) // exit with exit error 9
}

//print verified input
//print(input)

// loop overeach cahracter of the imput string
var happyCount = 0
var sadCount = 0
for individualCharacter in input {
    
    //DEBUG:What character are we looking at now?
//    print(individualCharacter)
    
    // Is the character happy, sad, or niether?
    if individualCharacter == "😃" || individualCharacter == "😄" ||  individualCharacter == "😆" || individualCharacter == "😀" || individualCharacter == "☺️" || individualCharacter == "😊" || individualCharacter == "🙂" || individualCharacter == "😌" || individualCharacter == "😍" ||  individualCharacter == "😋" || individualCharacter == "😜" || individualCharacter == "😝" || individualCharacter == "🤑" ||   individualCharacter == "🤗" {
        happyCount+=1
    } else if individualCharacter == "☹️" || individualCharacter == "😞" || individualCharacter == "😔" || individualCharacter == "😟" || individualCharacter == "😕" || individualCharacter == "🙁" || individualCharacter == "😣" || individualCharacter == "😫" ||  individualCharacter == "😩" || individualCharacter == "😢" || individualCharacter == "😥" || individualCharacter == "😭" || individualCharacter == "😓" || individualCharacter == "😿" {
        sadCount+=1
    }
}


//OUTPUT
if sadCount > happyCount {
    print("sad")
}else if happyCount > sadCount {
    print("happy")
}else if happyCount == sadCount {
    print("unsure")
}else if happyCount == 0 && sadCount == 0 {
    print("none")
}

