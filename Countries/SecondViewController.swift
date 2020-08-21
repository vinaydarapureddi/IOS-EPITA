//
//  SecondViewController.swift
//  Countries
//
//  Created by Vinay on 21/08/2020.
//

import UIKit

class SecondViewController: UIViewController {

    var country: Country?
    
    @IBOutlet weak var countryImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var populationLabel: UILabel!
    
    @IBOutlet weak var capitalLabel: UILabel!
    
    @IBOutlet weak var regionLabel: UILabel!
    @IBOutlet weak var nativeLabel: UILabel!
    @IBOutlet weak var numericLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        nameLabel.text = "Name: " + (country?.name ?? "")
        codeLabel.text = "Alpha code: " + (country?.alpha3Code ?? "")
        
        countryImage.sd_setImage(with: URL(string: (country?.flag)!))
        
        populationLabel.text = "Population: " + (country?.population ?? "")
        capitalLabel.text = "Capital: " + (country?.capital ?? "")
        
        regionLabel.text = "Region: " + (country?.region ?? "")
        nativeLabel.text = "Native name: " + (country?.nativeName ?? "")
        
        numericLabel.text = "Numeric code: " + (country?.numericCode ?? "")
        
        self.title = country?.name ?? ""
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
