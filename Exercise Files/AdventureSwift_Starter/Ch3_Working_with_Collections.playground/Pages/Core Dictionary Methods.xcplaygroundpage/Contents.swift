/*:
 # Core Dictionary Methods
 ---
 
 ## Topic Essentials
Dictionary elements can be easily updated and removed using subscript syntax or class methods.
 
 ### Objectives
 + Create a dictionary called **playerStats** and initialize it with key-value pairs
 + Update **playerStats** using different methods
 + Remove key-value pairs from **playerStats** using different methods
 + Create a 2 dimensional dictionary called **questDict** and populate it
 + Use chained subcripts to access a nested key-value pair
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Caching and overwriting items
var playerStatus: [String: Int] = ["HP": 100, "Attack": 35, "Gold": 29]
var oldValue = playerStatus.updateValue(30, forKey: "Attack")

// playerStatus = ["Evasion": 12, "MP": 55]

// Caching and removing items
// playerStatus["Gold"] = nil
var removedValue = playerStatus.removeValue(forKey: "Gold")

print(playerStatus)

// Nested dictionaries
var questBoard = [
    "Fetch Gemstones": [
        "Objective": "Retrieve 5 gemstones",
        "Secret": "Complete in under 5 mintues"
    ],
    "Defeat Big Boss": [
        "Objective": "Beat the boss",
        "Secret": "Win witg 50% health"
    ]
]

var gemstoneObjective = questBoard["Fetch Gemstones"]?["Objective"]
