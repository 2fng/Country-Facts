//
//  DetailViewController.swift
//  CountryFact
//
//  Created by Hua Son Tung on 06/01/2022.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var countryNameLabel: UILabel!
    @IBOutlet var capitalLabel: UILabel!
    @IBOutlet var populationLabel: UILabel!
    @IBOutlet var areaLabel: UILabel!
    @IBOutlet var currencyLabel: UILabel!
    
    var name: String?
    var capital: String?
    var population: Int?
    var area: Double?
    var currencySymbol: String?
    var currencyName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        currencyLabel.numberOfLines = 0
        addingValues()
    }
    
    private func addingValues() {
        if let validName = name {
            countryNameLabel.text = ("Name: \(validName)")
        }
        
        if let validCaptial = capital {
            capitalLabel.text = ("Capital: \(validCaptial)")
        }
        
        if let validPopulation = population {
            populationLabel.text = ("Population: \(validPopulation)")
        }
        
        if let validArea = area {
            areaLabel.text = ("Area: \(validArea)")
        }
        
        if let validCurrencyName = currencyName {
            if let validCurrencySymbol = currencySymbol {
                currencyLabel.text = ("Currency: \(validCurrencyName) (\(validCurrencySymbol))")
            }
        }
    }

}
