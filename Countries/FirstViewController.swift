//
//  ViewController.swift
//  Countries
//
//  Created by Vinay on 21/08/2020.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var countryArray: [Country]?
    
    @IBOutlet weak var tableViewCountry: UITableView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        addData()
        
        self.title = "Country List"
        
    }
    
    
    
    
    func addData() {
        
        countryArray = []
        
        countryArray?.append(Country(name: "India", alpha3Code: "IND", population: "1295210000", capital: "New Delhi", region: "Asia", nativeName: "भारत", numericCode: "356", flag: "https://restcountries.eu/data/ind.svg"))
        countryArray?.append(Country(name: "France", alpha3Code: "FRA", population: "66710000", capital: "Paris", region: "Europe", nativeName: "France", numericCode: "250", flag: "https://restcountries.eu/data/fra.svg"))
        countryArray?.append(Country(name: "United States of America", alpha3Code: "USA", population: "323947000", capital: "Washington, D.C.", region: "Americas", nativeName: "United States", numericCode: "840", flag: "https://restcountries.eu/data/usa.svg"))
        countryArray?.append(Country(name: "Canada", alpha3Code: "CAN", population: "36155487", capital: "Ottawa", region: "Americas", nativeName: "Canada", numericCode: "124", flag: "https://restcountries.eu/data/can.svg"))
        countryArray?.append(Country(name: "Mexico", alpha3Code: "MEX", population: "122273473", capital: "Mexico City", region: "Americas", nativeName: "México", numericCode: "484", flag: "https://restcountries.eu/data/mex.svg"))
        countryArray?.append(Country(name: "South Africa", alpha3Code: "ZAF", population: "55653654", capital: "Pretoria", region: "Africa", nativeName: "South Africa", numericCode: "710", flag: "https://restcountries.eu/data/zaf.svg"))
        countryArray?.append(Country(name: "Afghanistan", alpha3Code: "AFG", population: "27657145", capital: "Kabul", region: "Asia", nativeName: "افغانستان", numericCode: "004", flag: "https://restcountries.eu/data/afg.svg"))
        countryArray?.append(Country(name: "Åland Islands", alpha3Code: "ALA", population: "28875", capital: "Mariehamn", region: "Europe", nativeName: "Åland", numericCode: "248", flag: "https://restcountries.eu/data/ala.svg"))
        countryArray?.append(Country(name: "Albania", alpha3Code: "ALB", population: "2886026", capital: "Tirana", region: "Europe", nativeName: "Shqipëria", numericCode: "008", flag: "https://restcountries.eu/data/alb.svg"))
        countryArray?.append(Country(name: "Algeria", alpha3Code: "", population: "40400000", capital: "Algiers", region: "Africa", nativeName: "الجزائر", numericCode: "012", flag: "https://restcountries.eu/data/dza.svg"))
        countryArray?.append(Country(name: "American Samoa", alpha3Code: "ASM", population: "57100", capital: "Pago Pago", region: "Oceania", nativeName: "American Samoa", numericCode: "016", flag: "https://restcountries.eu/data/asm.svg"))
        countryArray?.append(Country(name: "Andorra", alpha3Code: "AND", population: "78014", capital: "Andorra la Vella", region: "Europe", nativeName: "Andorra", numericCode: "020", flag: "https://restcountries.eu/data/and.svg"))
        countryArray?.append(Country(name: "Martinique", alpha3Code: "MTQ", population: "378243", capital: "Fort-de-France", region: "Americas", nativeName: "Martinique", numericCode: "474", flag: "https://restcountries.eu/data/mtq.svg"))
        
        self.tableViewCountry.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return countryArray?.count ?? 0
        
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CountryTableViewCell
        
        let country = countryArray![indexPath.row]
        
        cell.labelContryName.text = country.name
        cell.lblCountry.text = country.nativeName
        
        cell.imageCountry.sd_setImage(with: URL(string: country.flag!))
        
        return cell
        
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        controller.country = countryArray![indexPath.row]
        self.navigationController?.pushViewController(controller, animated: true)
        
    }
}


