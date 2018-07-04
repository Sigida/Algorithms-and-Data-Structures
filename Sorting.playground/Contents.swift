//Сортировка выбором
//Selected sort
//each element is checked. find the smallest and moves it to the new array.

//O(n*n)
//generic

func smallest <T:Comparable> (array:[T]) -> Int {
    var firstItem = array[0]
    var index = 0
    for i in 1..<array.count {
        if array[i] < firstItem {
            firstItem = array[i]
            index = i
        }
    }
    return index
}
func sorting<T:Comparable>(unSortArray:[T])-> [T] {
    var sortArray = [T]()
    var array = unSortArray
    while array.isEmpty == false  {
        let index = smallest(array: array)
        let small = array[index ]
        sortArray.append(small)
        array.remove(at: index)
        
    }
    return sortArray
}
sorting(unSortArray: ["Nomer","Griner","Xrten"])
sorting(unSortArray: [10,77,90,56,89,30])

//example with Int

func smallest (array:[Int]) -> Int {
    var firstItem = array[0]
    var index = 0
    for i in 1..<array.count {
        if array[i] < firstItem {
            firstItem = array[i]
            index = i
        }
    }
    return index
}


smallest(array: [15,3,6,9,34,76])


func sorting(unSortArray:[Int])-> [Int] {
    var sortArray = [Int]()
    var array = unSortArray
   while array.isEmpty == false  {
    let index = smallest(array: array)
    let small = array[index ]
        sortArray.append(small)
        array.remove(at: index)
    
        
    }
   return sortArray
}

let newArray = sorting(unSortArray: [15,3,6,9,34,76])
print(newArray)


