//
//  ViewController.swift
//  CountryFact
//
//  Created by Hua Son Tung on 06/01/2022.
//

import UIKit

class ViewController: UITableViewController {
    
    var countries = [Country]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Countries Facts"
        
        //HTTP Request
        let countryURL = "https://restcountries.com/v2/all?fields=name,capital"
        fetchData(urlString: countryURL)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Country", for: indexPath)
        
        cell.textLabel?.text = countries[indexPath.row].name
        
        return cell
    }

    func fetchData(urlString: String) {
        
        if let url = URL(string: urlString) {
            let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
                let decoder = JSONDecoder()
            
                do {
                    let result = try decoder.decode([Country].self, from: data!)
                    self!.countries += result
                    
                    DispatchQueue.main.async {
                        self!.tableView.reloadData()
                    }
                    
                } catch {
                    print("failed to convert \(error)")
                }
            }
            task.resume()
        }
    }
}

