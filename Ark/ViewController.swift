//
//  ViewController.swift
//  Ark
//
//  Created by John Berry on 10/28/17.
//  Copyright © 2017 dev G Development. All rights reserved.
//

import UIKit
//import SwiftyJSON

class ViewController: UIViewController {
    var victim_array: [Victim] = []
    
    @IBAction func sendSavedButtonPress(_ sender: AnyObject) {
        
        var random_int = arc4random_uniform(UInt32(Int(victim_array.count))) + 1;
        
        print("Random int is: \(random_int)")
        var selectedVictim = victim_array[Int(random_int)]
        
        print("Selected victim \(selectedVictim)")
        
        downloadPredictions(victim: selectedVictim)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createVictimObjects()
        print("Victim array has this many \(victim_array.count)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func downloadPredictions(victim: Victim){
        var ID = victim.victimID! + "/"
        var strLat = String(describing: victim.lat!)+"/"
        var strLon = String(describing: victim.lon!)+"/"
        var strGrpSize = String(describing: victim.group_size!)+"/"
        
        print("ID: \(ID) Lat: \(strLat) Lng: \(strLon) GrpSize: \(strGrpSize)")
        
        let base_url = "http://arkapp.pythonanywhere.com/api/process/"
        let call_url = base_url + ID + strLat + strLon + strGrpSize
        
        guard let requestUrl = URL(string: call_url)
            else{return}
        
        let jsonData = NSData(contentsOf: requestUrl)
        let readableJSON = try! JSONSerialization.jsonObject(with: jsonData! as Data, options: []) as![String:AnyObject]
        
        print("JSON Returned is \(readableJSON)")
        //let object = JSON(readableJSON)
        
        
    }
    
    func createVictimObjects(){
        
        let victim1 = Victim(name: "David", victimID: "v1", lat:29.676784, lon:-95.053939, group_size:2)
        victim_array.append(victim1)
        
        let victim2 = Victim(name: "Gina", victimID: "v2", lat:29.676784, lon:-95.053939, group_size:1)
        victim_array.append(victim2)
        
        let victim3 = Victim(name: "Estaban", victimID: "v3", lat:29.676784, lon:-95.053939, group_size:3)
        victim_array.append(victim3)
        
        let victim4 = Victim(name: "John", victimID: "v4", lat:29.676784, lon:-95.053939, group_size:4)
        victim_array.append(victim4)
        
        let victim5 = Victim(name: "Ben", victimID: "v5", lat:29.676784, lon:-95.053939, group_size:2)
        victim_array.append(victim5)
        
        let victim6 = Victim(name: "Abi", victimID: "v6", lat:29.676784, lon:-95.053939, group_size:4)
        victim_array.append(victim6)
        
        let victim7 = Victim(name: "Jenny", victimID: "v7", lat:29.676784, lon:-95.053939, group_size:3)
        victim_array.append(victim7)
        
        let victim8 = Victim(name: "Akshay", victimID: "v8", lat:29.676784, lon:-95.053939, group_size:3)
        victim_array.append(victim8)
        
        let victim9 = Victim(name: "Gowen Family", victimID: "v9", lat:29.676784, lon:-95.053939, group_size:1)
        victim_array.append(victim9)
        
        let victim10 = Victim(name: "Ricky", victimID: "v10", lat:29.676784, lon:-95.053939, group_size:3)
        victim_array.append(victim10)
        
        let victim11 = Victim(name: "William", victimID: "v11", lat:29.676784, lon:-95.053939, group_size:1)
        victim_array.append(victim11)
        
        let victim12 = Victim(name: "Maggie", victimID: "v12", lat:29.676784, lon:-95.053939, group_size:3)
        victim_array.append(victim12)
    }
    
}


