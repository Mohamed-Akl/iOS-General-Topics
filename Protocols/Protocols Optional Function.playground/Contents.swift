import UIKit

/*
 In this example, the TreeDelegate protocol is marked with @objc, allowing us to use the optional didBearFruit() function.

 The AppleTree class conforms to the TreeDelegate protocol and provides implementations for the required functions didStartGrowing() and didStopGrowing() and implement the optional function didBearFruit().

 The PomegranateTree class also conforms to the TreeDelegate protocol and provides implementations for the required functions didStartGrowing() and didStopGrowing().
 */

@objc protocol TreeDelegate {
    func didStartGrowing()
    func didStopGrowing()
    @objc optional func didBearFruit()
}

class AppleTree: NSObject, TreeDelegate {
    func didStartGrowing() {
        print("The apple tree has started growing.")
    }

    func didStopGrowing() {
        print("The apple tree has stopped growing.")
    }

    func didBearFruit() {
         // optional
        print("optional function")
    }
}

class PomegranateTree: NSObject, TreeDelegate {
    func didStartGrowing() {
        print("The pomegranate tree has started growing.")
    }

    func didStopGrowing() {
        print("The pomegranate tree has stopped growing.")
    }
}

// Create instances of the conforming classes
let appleTree = AppleTree()
let pomegranateTree = PomegranateTree()

// Call the required functions
appleTree.didStartGrowing() // Output: "The apple tree has started growing."
appleTree.didStopGrowing()  // Output: "The apple tree has stopped growing."
appleTree.didBearFruit()

pomegranateTree.didStartGrowing()   // Output: "The pomegranate tree has started growing."
pomegranateTree.didStopGrowing()    // Output: "The pomegranate tree has stopped growing."





//MArk:- Another way to using


/*
 In this updated example, we define two protocols: TreeDelegate and FruitBearingTreeDelegate. The TreeDelegate protocol includes the two required functions didStartGrowing() and didStopGrowing(). The FruitBearingTreeDelegate protocol extends TreeDelegate and adds the additional function didBearFruit().

 The AppleTree class conforms to the FruitBearingTreeDelegate
 */



//protocol TreeDelegate {
//    func didStartGrowing()
//    func didStopGrowing()
//}
//
//protocol FruitBearingTreeDelegate: TreeDelegate {
//    func didBearFruit()
//}
//
//class AppleTree: FruitBearingTreeDelegate {
//    func didStartGrowing() {
//        print("The apple tree has started growing.")
//    }
//
//    func didStopGrowing() {
//        print("The apple tree has stopped growing.")
//    }
//
//    func didBearFruit() {
//        print("The apple tree has borne fruit.")
//    }
//}
//
//class PomegranateTree: TreeDelegate {
//    func didStartGrowing() {
//        print("The pomegranate tree has started growing.")
//    }
//
//    func didStopGrowing() {
//        print("The pomegranate tree has stopped growing.")
//    }
//}
