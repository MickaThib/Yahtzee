import UIKit

var resultats = [6,5,3,5,2]
var nombreDeYahtzee = 1

// MARK: - FONCTION SOMME (ou CHANCE)
func somme(_ resultats:[Int]) -> Int {
    var somme = 0
    
    for resultat in resultats {
        somme += resultat
    }
    
    return somme
}

var total = somme(resultats)


// MARK: - FONCTION DECOMPTE
func decompter(_ resultats:[Int]) -> [Int] {
    
    var decompte:[Int] = []
    
    var un = 0
    var deux = 0
    var trois = 0
    var quatre = 0
    var cinq = 0
    var six = 0
    
    for resultat in resultats {
        switch resultat {
        case 1:
            un += 1
        case 2:
            deux += 1
        case 3:
            trois += 1
        case 4:
            quatre += 1
        case 5:
            cinq += 1
        case 6:
            six += 1
        default:
            print("Erreur")
        }
    }
    decompte = [un, deux, trois, quatre, cinq, six]
    
    return decompte
}

var Decompte = decompter(resultats)


// MARK: - FONCTION COMPTERSIMPLE
func compterSimple(resultats:[Int], nombre:Int) -> Int {
    var total = 0
    
    for resultat in resultats {
        if resultat == nombre {
            total += resultat
        }
    }
    
    return total
}

var sommeDesCinq = compterSimple(resultats:resultats, nombre:5)


// MARK: - FONCTION BRELAN
func brelan(_ resultats:[Int]) -> Int {
    var score = 0
    let decompte = decompter(resultats)
    
    if decompte.contains(3) || decompte.contains(4) || decompte.contains(5){
        score = somme(resultats)
    }
    return score
}

var scoreBrelan = brelan(resultats)


// MARK: - FONCTION FULL
func full(_ resultats:[Int]) -> Int {
    var score = 0
    let decompte = decompter(resultats)
    
    if decompte.contains(2) && decompte.contains(3){
        score = 25
    }
    return score
}

var scoreFull = full(resultats)


// MARK: - FONCTION CARRE
func carre(_ resultats:[Int]) -> Int {
    var score = 0
    let decompte = decompter(resultats)
    
    if decompte.contains(4) || decompte.contains(5){
        score = somme(resultats)
    }
    return score
}

var scoreCarre = carre(resultats)


// MARK: - FONCTION YAHTZEE
func yahtzee(_ resultats:[Int]) -> Int {
    var score = 0
    let decompte = decompter(resultats)
    
    if decompte.contains(5){
        if nombreDeYahtzee == 0 {
            score = 50
            nombreDeYahtzee += 1
        } else {
            score = 100
        }
    }
    return score
}

var scoreYahtzee = yahtzee(resultats)


// MARK: - FONCTION GRANDE SUITE
func gSuite(_ resultats:[Int]) -> Int {
    var score = 0
    
    if resultats.contains(1) && resultats.contains(2) && resultats.contains(3) && resultats.contains(4) && resultats.contains(5) {
        score = 40
    } else if resultats.contains(2) && resultats.contains(3) && resultats.contains(4) && resultats.contains(5) && resultats.contains(6) {
        score = 40
    }
    return score
}

var scoreGSuite = gSuite(resultats)


// MARK: - FONCTION PETITE SUITE
func pSuite(_ resultats:[Int]) -> Int {
    var score = 0
    
    if resultats.contains(1) && resultats.contains(2) && resultats.contains(3) && resultats.contains(4) {
        score = 30
    } else if resultats.contains(2) && resultats.contains(3) && resultats.contains(4) && resultats.contains(5) {
        score = 30
    } else if resultats.contains(3) && resultats.contains(4) && resultats.contains(5) && resultats.contains(6) {
        score = 30
    }
    return score
}

var scorePSuite = pSuite(resultats)
