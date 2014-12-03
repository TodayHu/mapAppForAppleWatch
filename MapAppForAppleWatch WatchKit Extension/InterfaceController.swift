//
//  InterfaceController.swift
//  MapAppForAppleWatch WatchKit Extension
//
//  Created by Albert Saucedo on 12/2/14.
//  Copyright (c) 2014 Albert Saucedo. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var mainMap: WKInterfaceMap!

    var location = CLLocationCoordinate2D(latitude: 41.793553, longitude: -87.71799199999998)
    var span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)

    override init(context: AnyObject?) {
        // Initialize variables here.
        super.init(context: context)

        mainMap.setCoordinateRegion(MKCoordinateRegion(center: location, span: span))
        mainMap.addAnnotation(location, withImageNamed: "Home")
        mainMap.addAnnotation(location, withPinColor: WKInterfaceMapPinColor.Purple)

        // Configure interface objects here.
        NSLog("%@ init", self)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        NSLog("%@ will activate", self)
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        NSLog("%@ did deactivate", self)
        super.didDeactivate()
    }

    @IBAction func onAddImage() {

        var imageView = UIImageView(frame: CGRectMake(100, 150, 25, 25))
        var image = UIImage(named: "oldrepub.png")
        imageView.image = image

//        var interface : InterfaceController
//        interface.??

        mainMap.addAnnotation(location, withImage: imageView.image)
    }

}
