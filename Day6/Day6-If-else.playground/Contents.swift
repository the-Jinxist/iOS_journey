
func loveCalculator(randomNumber: Int) {
  
    
    if randomNumber == 100 {
        print("You love each other like Kanye loves Kanye")
    }else{
        print("You'll forever be alone")
    }
    
}

func lenientLoveCaluclator(randomNumber: Int) {
    if randomNumber > 80 {
        print("You love each other like Kanye loves Kanye")
    } else if randomNumber >= 40 && randomNumber <= 80 {
        print("You go together like coke and mentos")
    }
    else{
        print("You'll forever be alone")
    }
}

let loveScore = Int.random(in: 0...100)

func switchLoveCalculator(randomNumber: Int){
    switch randomNumber {
    case 81...100:
        print("You love each other like Kanye loves Kanye")
    case 40...80:
        print("You go together like coke and mentos")
    case 0...39:
        print("You'll forever be alone")
    default:
        print("Bruh!")
        
    }
}

loveCalculator(randomNumber: loveScore)
lenientLoveCaluclator(randomNumber: loveScore)
switchLoveCalculator(randomNumber: loveScore)

