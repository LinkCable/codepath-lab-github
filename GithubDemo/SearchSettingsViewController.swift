//
//  SearchSettingsViewController.swift
//  Gitzone
//
//  Created by Philippe Kimura-Thollander on 3/2/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class SearchSettingsViewController: UIViewController {

    weak var delegate: SettingsPresentingViewControllerDelegate?
    @IBOutlet weak var starsSlider: UISlider!
    @IBOutlet weak var starsLabel: UILabel!
    
    var settings: GithubRepoSearchSettings!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        starsLabel.text = String(starsSlider.value)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func onSave(sender: AnyObject) {
        settings.minStars = Int(starsSlider.value)
        self.delegate?.didSaveSettings(settings)
        performSegueWithIdentifier("backSegue", sender: sender)
    }
    
    @IBAction func onCancel(sender: AnyObject) {
        self.delegate?.didCancelSettings()
        dismissViewControllerAnimated(true, completion: nil)
    }
    @IBAction func onSliderChanged(sender: AnyObject) {
        let rounded: Int = Int(starsSlider.value)
        starsSlider.value = Float(rounded)
        starsLabel.text = String(starsSlider.value)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
