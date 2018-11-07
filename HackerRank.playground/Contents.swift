import UIKit
import Foundation


/*
 * Complete the simpleArraySum function below.
 */
func simpleArraySum(ar: [Int]) -> Int {
    
    let reducing = ar.reduce(0, +)
    return reducing
    
}
//
//let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
//FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
//let fileHandle = FileHandle(forWritingAtPath: stdout)!
//
//guard let arCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
//    else { fatalError("Bad input") }
//
//guard let arTemp = readLine() else { fatalError("Bad input") }
//let ar: [Int] = arTemp.split(separator: " ").map {
//    if let arItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
//        return arItem
//    } else { fatalError("Bad input") }
//}
//
//guard ar.count == arCount else { fatalError("Bad input") }
//
//let result = simpleArraySum(ar: ar)
//
//fileHandle.write(String(result).data(using: .utf8)!)
//fileHandle.write("\n".data(using: .utf8)!)
//
//

simpleArraySum(ar: [1000000001, 1000000002, 1000000003, 1000000004, 1000000005])

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var aliceCounter = 0
    var bobCounter = 0
    var returnArray: [Int] = []
    for (index, number) in a.enumerated() {
        if number > b[index] {
            aliceCounter += 1
        } else if number < b[index] {
            bobCounter += 1
        }
    }
    returnArray.append(aliceCounter)
    returnArray.append(bobCounter)
    return returnArray
}

compareTriplets(a: [17, 28, 30], b: [99, 16, 8])


func diagonalDifference(arr: [[Int]]) -> Int {
    
    var nbr1: Int = 0
    var nbr2: Int = 0
    
    for (index, insideArray) in arr.enumerated() {
        nbr1 += insideArray[index]
    }
    for (index, insideArray) in arr.enumerated() {
        nbr2 += insideArray.reversed()[index]
    }
    
    let returnNumber = abs(nbr1 - nbr2)
    
    return returnNumber
}

diagonalDifference(arr: [[11, 2, 4], [4, 5, 6], [10, 8, -12]])


func plusMinus(arr: [Int]) -> Void {
    let counter = arr.count
    let filteringBiggerThanZero = arr.filter {
        $0 > 0
    }
    let filteringLessThanZero = arr.filter {
        $0 < 0
    }
    let filteringZero = arr.filter {
        $0 == 0
    }
    
    let doubleBiggerThanZero = Double(filteringBiggerThanZero.count) / Double(counter)
    let sixDigitsBiggerThanZero = String(format: "%.6f", doubleBiggerThanZero)
    let doubleLessThanZero = Double(filteringLessThanZero.count) / Double(counter)
    let sixDigitsLessThanZero = String(format: "%.6f", doubleLessThanZero)
    let doubleZero = Double(filteringZero.count) / Double(counter)
    let sixDigitsZero = String(format: "%.6f", doubleZero)
    
    guard let bigger = Double(sixDigitsBiggerThanZero) else { return }
    guard let less = Double(sixDigitsLessThanZero) else { return }
    guard let zero = Double(sixDigitsZero) else { return }
    
    print(bigger)
    print(less)
    print(zero)
    
    return
}

plusMinus(arr: [-4, 3, -9, 0, 4, 1])


func staircase(n: Int) -> Void {
    var current = ""
    
    for _ in 0..<n {
        current.append(" ")
    }
    var arr = Array(current)
    for _ in arr {
        arr.remove(at: 0)
        arr.append("#")
        print(String(arr))
    }
}

staircase(n: 6)

func miniMaxSum(arr: [Int]) -> Void {
    let droppingLast = arr.sorted().dropLast()
    let reduceDroppingLast = droppingLast.reduce(0, +)
    let droppingFirst = arr.sorted().dropFirst()
    let reduceDroppingFirst = droppingFirst.reduce(0, +)
    print("\(reduceDroppingLast) \(reduceDroppingFirst)")
}
miniMaxSum(arr: [1, 2, 3, 4, 5])


func birthdayCakeCandles(ar: [Int]) -> Int {
    let sortedArray = ar.sorted()
    let filteredArray = sortedArray.filter { $0 == sortedArray.last }
    return filteredArray.count
}

birthdayCakeCandles(ar: [3, 2, 1, 3])


func timeConversion(s: String) -> String {
    let dateFormat = DateFormatter()
    dateFormat.dateFormat = "hh:mm:ssa"
    let date = dateFormat.date(from: s)
    
    guard let safeDate = date else { return "" }
    dateFormat.dateFormat = "HH:mm:ss"
    let date24 = dateFormat.string(from: safeDate)
    
    return date24
}

timeConversion(s: "07:05:45PM")

func repeatedString(s: String, n: Int) -> Int {
    if n == 0 {
        return 0
    }
    guard s.count <= 100 else { return 0 }
    guard n <= 10000000000000 else { return 0 }

    if n % s.count == 0 {
        let filteredA = s.filter { $0 == "a"}.count * (n/s.count)
        return filteredA
    }
    if n % s.count != 0 {
        let filteredA = s.filter { $0 == "a"}.count
        let b = (n / s.count) * filteredA + 1
        print(b)
        return b
    }


//    guard Array(s).sorted().contains("a") else { return 0 }

    if s.count > 1 {
        let str = s.padding(toLength: n, withPad: s, startingAt: 0)
        return str.filter { $0 == "a" }.count
    } else {
        return n
    }
}

872514961806 % 2
10 / 3

repeatedString(s: "aba", n: 10)
repeatedString(s: "a", n: 1000000000000)
repeatedString(s: "x", n: 970770)
repeatedString(s: "kmretasscityylpdhuwjirnqimlkcgxubxmsxpypgzxtenweirknjtasxtvxemtwxuarabssvqdnktqadhyktagjxoanknhgilnm", n: 736778906400)
repeatedString(s: "udjlitpopjhipmwgvggazhuzvcmzhulowmveqyktlakdufzcefrxufssqdslyfuiahtzjjdeaxqeiarcjpponoclynbtraaawrps", n: 872514961806)


func repeatedString2(s: String, n: Int) -> Int {
    var moduloCounter = 0
    var counter = 0
    let moduloCutOff = n % s.count

    for i in 1..<s.count {
        if Array(s)[i] == "a" {
            counter += 1
            if i < moduloCutOff {
                moduloCounter += 1
            }
        }
    }
    counter = counter * (n / s.count)
    return counter + moduloCounter

}
repeatedString2(s: "aba", n: 10)
repeatedString2(s: "a", n: 1000000000000)
repeatedString2(s: "x", n: 970770)
repeatedString2(s: "kmretasscityylpdhuwjirnqimlkcgxubxmsxpypgzxtenweirknjtasxtvxemtwxuarabssvqdnktqadhyktagjxoanknhgilnm", n: 736778906400)
repeatedString2(s: "udjlitpopjhipmwgvggazhuzvcmzhulowmveqyktlakdufzcefrxufssqdslyfuiahtzjjdeaxqeiarcjpponoclynbtraaawrps", n: 872514961806)



func gradingStudents(grades: [Int]) -> [Int] {
    var returnResults: [Int] = []
    for i in grades {
        if i < 38 {
            returnResults.append(i)
        } else if (i + (5 - i % 5)) - i < 3 {
            returnResults.append((i + (5 - i % 5)))
        } else {
            returnResults.append(i)
        }
    }
    return returnResults
}


gradingStudents(grades: [73, 67, 38, 33])



73 + (5 - 73 % 5)


func isValidPassword(input: String) -> Bool {
    //guard input.count > 8 else { return false }
    let setOfUppercase: CharacterSet = CharacterSet(charactersIn: "ABCDEFGHIJKLMNOPQRSTUVWXYZ")
    let setOfNumbersAndAlpha = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyz0123456789")
    let setOfUpperNormalandNumbers = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789")
    if input.rangeOfCharacter(from: setOfUpperNormalandNumbers.inverted) == nil {
        return false
    } else if input.rangeOfCharacter(from: setOfUppercase) == nil {
        return false
    } else if input.rangeOfCharacter(from: setOfNumbersAndAlpha) == nil {
        return false
    } else {
        return true
    }
}

isValidPassword(input: "h.l")
isValidPassword(input: "hH1")
isValidPassword(input: "0.h")
isValidPassword(input: "1.H")
isValidPassword(input: "H&1")

//s: integer, starting point of Sam's house location.
//t: integer, ending location of Sam's house location.
//a: integer, location of the Apple tree.
//b: integer, location of the Orange tree.
//apples: integer array, distances at which each apple falls from the tree.
//oranges: integer array, distances at which each orange falls from the tree.

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    let slice = s...t
    var positionOfApples: [Int] = []
    var positionOfOranges: [Int] = []
    var numberOfApplesInsideTheHouse = 0
    var numberOfOrangesInsideTheHouse = 0
    
    for i in apples {
        let pos = i + a
        positionOfApples.append(pos)
        if slice.contains(pos) {
            numberOfApplesInsideTheHouse += 1
        }
    }
    for i in oranges {
        let pos = i + b
        positionOfOranges.append(pos)
        if slice.contains(pos) {
            numberOfOrangesInsideTheHouse += 1
        }
    }
    print(numberOfApplesInsideTheHouse)
    print(numberOfOrangesInsideTheHouse)
}

countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2, 2, 1], oranges: [5, -6])
