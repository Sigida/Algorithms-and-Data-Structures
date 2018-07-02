
import UIKit

//BinarySerch O(log n)
//is a search algorithm that finds the position of a target value within a sorted array.
//Binary search begins by comparing the middle element of the array with the target value. If the target value matches the middle element, its position in the array is returned. If the target value is less than or greater than the middle element, the search continues in the lower or upper half of the array, respectively, eliminating the other half from consideration


//generic
//we return Int because array index always is Int

func binarySerchUniversal<T:Comparable>(array:[T], element:T)-> Int? {
    var firstElement = 0
    var lastElement = array.count - 1
    
    while firstElement <= lastElement {
        let mid = firstElement + (lastElement - firstElement)/2
        let find = array[mid]
        if find == element {
            return mid
        }else if find < element {
            firstElement = mid + 1
        } else {
            lastElement = mid - 1
        }
    }
    return nil
}


// example

func binarySerch(array:[Int], element:Int)-> Int? {
    var firstElement = 0
    var lastElement = array.count - 1
    
    while firstElement <= lastElement {
        let mid = firstElement + (lastElement - firstElement)/2
        let find = array[mid]
        if find == element {
            return mid
        }else if find < element {
            firstElement = mid + 1
        } else {
            lastElement = mid - 1
        }
    }
    return nil
}

let arrayW = [1,2,3,4,5,6,7,8,9,10,11,12,13,14]
let find = binarySerch(array: arrayW, element: 4)
if let item = find {
    print("find = \(item)")
    
}

