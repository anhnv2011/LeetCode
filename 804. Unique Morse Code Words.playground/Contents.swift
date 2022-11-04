import UIKit

//https://leetcode.com/problems/unique-morse-code-words/
//804. Unique Morse Code Words
//Easy
//
//International Morse Code defines a standard encoding where each letter is mapped to a series of dots and dashes, as follows:
//
//'a' maps to ".-",
//'b' maps to "-...",
//'c' maps to "-.-.", and so on.
//For convenience, the full table for the 26 letters of the English alphabet is given below:
//
//[".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
//Given an array of strings words where each word can be written as a concatenation of the Morse code of each letter.
//
//For example, "cab" can be written as "-.-..--...", which is the concatenation of "-.-.", ".-", and "-...". We will call such a concatenation the transformation of a word.
//Return the number of different transformations among all words we have.
//
//
//
//Example 1:
//
//Input: words = ["gin","zen","gig","msg"]
//Output: 2
//Explanation: The transformation of each word is:
//"gin" -> "--...-."
//"zen" -> "--...-."
//"gig" -> "--...--."
//"msg" -> "--...--."
//There are 2 different transformations: "--...-." and "--...--.".
//Example 2:
//
//Input: words = ["a"]
//Output: 1
class Solution {
    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        
        let morseCode = ["a": "01", "b": "1000", "c": "1010", "d": "100", "e": "0", "f": "0010", "g": "110", "h": "0000", "i": "00", "j": "0111", "k": "101", "l": "0100", "m": "11", "n": "10", "o": "111", "p": "0110", "q": "1101", "r": "010", "s": "000", "t": "1", "u": "001", "v": "0001", "w": "011", "x": "1001", "y": "1011", "z": "1100"]
        
        let stringArrayToMorseArray = words.map({$0.reduce(""){$0 + morseCode[String($1)]!}})
        return Set(stringArrayToMorseArray).count
    }
    
    
    func uniqueMorseRepresentations2(_ words: [String]) -> Int {
        var dict = [String:Int]()
        let morseCode = ["a": "01", "b": "1000", "c": "1010", "d": "100", "e": "0", "f": "0010", "g": "110", "h": "0000", "i": "00", "j": "0111", "k": "101", "l": "0100", "m": "11", "n": "10", "o": "111", "p": "0110", "q": "1101", "r": "010", "s": "000", "t": "1", "u": "001", "v": "0001", "w": "011", "x": "1001", "y": "1011", "z": "1100"]
        
        for word in words {
            var code = ""
            for character in word {
                code += morseCode[String(character)]!
            }
            dict[code] = 1
        }
        
        return dict.count
    }
}

let words = ["gin","zen","gig","msg"]
Solution().uniqueMorseRepresentations(words)
Solution().uniqueMorseRepresentations2(words)
