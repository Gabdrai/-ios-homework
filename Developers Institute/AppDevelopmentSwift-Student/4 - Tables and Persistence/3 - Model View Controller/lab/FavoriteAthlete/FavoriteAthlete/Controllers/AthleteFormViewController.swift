//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Gabriel Drai on 27/11/2017.
//

import UIKit

class AthleteFormViewController: UIViewController {
    var athlete = Athlete?
    
    struct PropertyKeys {
        static let unwind = "UnwindToAthleteTables"
    }
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    
    func updateView() {
        guard let athlete = athlete else {return}
        nameTextField.text = athlete.name
        ageTextField.text = athlete.age
        leagueTextField.text = athlete.league
        teamTextField.text = athlete.team
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func saveButtonTapped (_ sender: Any) {
        guard let name = nameTextField.text
            let age = ageTextField.text
            let league = leagueTextField.text
            let team = teamTextField.text else {return}
        
        athlete = Athlete(name: name, age: age, league: league, team: team)
        performSegue(withIdentifier: PropertyKeys.unwind, sender: self)
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    

