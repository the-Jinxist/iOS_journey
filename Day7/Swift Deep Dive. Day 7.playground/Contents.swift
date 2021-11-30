
struct Town {
    let townName = "San Francisco"
    var citizens = ["Favour", "Spiderman"]
    var resources = ["Gold": 450, "Money": 45000000000]
    
    func fortify() {
        print("Defences increased by x2!")
    }
    
}

var myTown = Town()
print(myTown)

myTown.citizens.append("Keanu Reeves")
print(myTown)

myTown.fortify()

struct InitializedTown {
    let name: String
    var citizens: [String]
    var resources: [String: Int]
    
    init(townName: String, citizens: [String], resource: [String:Int]){
        self.name = townName
        self.citizens = citizens
        self.resources = resource
    }
}
