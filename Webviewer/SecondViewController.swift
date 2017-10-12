//
//  SecondViewController.swift
//  Webviewer
//
//  Created by ST1 on 11.10.2017.
//  Copyright © 2017 Kugim. All rights reserved.
//

import UIKit

let searchSiteInfo = [
    ["Google", "google","https://google.com/search?q="],
    ["Yandex", "yandex","https://www.yandex.com.tr/search/?text="],
    ["Duck Duck Go", "duckduck","https://duckduckgo.com/?q="],
]

let settings = [String] ()
var searchURL : String = ""



class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var showHideSwicthOutlet: UISwitch!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchLogo: UIImageView!
    @IBOutlet weak var segmentViewOutlet: UISegmentedControl!
    @IBOutlet weak var settingsView: UIView!
    @IBOutlet weak var allowForSearch: UILabel!
    
    @IBAction func segmentViewAction(_ sender: UISegmentedControl) {

        if sender.selectedSegmentIndex == 0 {
            settingsView.isHidden = true
            searchView.isHidden = false
            showHideSwicthOutlet.isHidden = false
            allowForSearch.isHidden = false
            
            if showHideSwicthOutlet.isOn != true {
            searchView.isHidden = true
            }
            
        } else if sender.selectedSegmentIndex == 1 {
            settingsView.isHidden = false
            searchView.isHidden = true
            showHideSwicthOutlet.isHidden = true
            allowForSearch.isHidden = true
        }
    }
    
    @IBAction func showHideSwitch(_ sender: UISwitch){
        if sender.isOn {
            searchView.isHidden = false
        } else {
        searchView.isHidden = true
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return searchSiteInfo.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return searchSiteInfo[row][0]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        searchLogo.image = UIImage(named: searchSiteInfo[row][1])
        searchURL = searchSiteInfo[row][2]
        print(searchURL)
    }

    override func viewDidLoad() {
        
        searchLogo.image = UIImage(named: searchSiteInfo[0][1])
        segmentViewAction(segmentViewOutlet)
        super.viewDidLoad()
        showHideSwitch(showHideSwicthOutlet)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


}
