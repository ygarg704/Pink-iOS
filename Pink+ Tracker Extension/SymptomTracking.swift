//
//  SymptomTracking.swift
//  Pink+ Tracker Extension
//
//  Created by Utkarsh Sharma on 27/09/20.
//

import UIKit
import WatchKit
import WatchConnectivity

class SymptomTracking: WKInterfaceController {
    @IBOutlet weak var symptomLoggingLabel: WKInterfaceLabel!
    @IBOutlet weak var lumpSwitch: WKInterfaceSwitch!
    @IBOutlet weak var thicknessSwitch: WKInterfaceSwitch!
    @IBOutlet weak var irritationSwift: WKInterfaceSwitch!
    @IBOutlet weak var skinSwitch: WKInterfaceSwitch!
    @IBOutlet weak var painSwitch: WKInterfaceSwitch!
    @IBOutlet weak var dischargeSwitch: WKInterfaceSwitch!
    @IBOutlet weak var logSymptomButton: WKInterfaceButton!
    
    let session = WCSession.default
    
    var lump = "No"
    var thickness = "No"
    var irritation = "No"
    var skin = "No"
    var pain = "No"
    var discharge = "No"
    
    var auth = "No"
    
    override func awake(withContext context: Any?) {
      super.awake(withContext: context)
        session.delegate = self
        session.activate()
    }
    
    @IBAction func lumpSwitcher(_ value: Bool) {
        if(lump=="No"){
            lump="Yes"
        } else{
            lump="No"
        }
    }
    
    @IBAction func swellingSwitcher(_ value: Bool) {
        if(thickness=="No"){
            thickness="Yes"
        } else{
            thickness="No"
        }
    }
    
    @IBAction func irritationSwitcher(_ value: Bool) {
        if(irritation=="No"){
            irritation="Yes"
        } else{
            irritation="No"
        }
    }
    
    @IBAction func skinswitcher(_ value: Bool) {
        if(skin=="No"){
            skin="Yes"
        } else{
            skin="No"
        }
    }
    
    @IBAction func painswitcher(_ value: Bool) {
        if(pain=="No"){
            pain="Yes"
        } else{
            pain="No"
        }
    }
    
    @IBAction func dischargeswitcher(_ value: Bool) {
        if(discharge=="No"){
            discharge="Yes"
        } else{
            discharge="No"
        }
    }
    
    @IBAction func buttonPressed() {
        if(auth == "No") {
            let action1 = WKAlertAction.init(title: "Dismiss", style:.cancel) {
                
            }
                    
            let action2 = WKAlertAction.init(title: "Okay", style:.default) {
                
            }
            
            presentAlert(withTitle: "Oops", message: "You're not logged in. Please login using the iOS or iPadOS app.", preferredStyle:.actionSheet, actions: [action1,action2])
        } else {
            let data = ["Lump": lump,
                                       "Thickness": thickness,
                                       "Irritation": irritation,
                                       "Skin": skin,
                                       "Pain": pain,
                                       "Discharge": discharge] //Create your dictionary as per uses
            session.sendMessage(data, replyHandler: nil, errorHandler: nil)
            
            let action1 = WKAlertAction.init(title: "Dismiss", style:.cancel) {
                
            }
                    
            let action2 = WKAlertAction.init(title: "Cool", style:.default) {
                
            }
            
            presentAlert(withTitle: "Symptoms Logged", message: "Your symptoms have been logged. You can share your symptom history with your contacts using the iOS app.", preferredStyle:.actionSheet, actions: [action1,action2])
        }

    }
}

extension SymptomTracking: WCSessionDelegate {
  
    func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
    }

    func session(_ session: WCSession, didReceiveMessage message: [String : Any]) {
        auth = message["Auth"] as! String
    }
}
