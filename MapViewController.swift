//
//  MapViewController.swift
//  Find-Friends
//
//  Created by Liam Bakar on 7/16/18.
//  Copyright © 2018 Ishaan Chandra. All rights reserved.
//

//import UIKit
//import MapKit
//
//class ViewController: UIViewController , CLLocationManagerDelegate{
//
//
//    var locationManager = CLLocationManager()
//
//    @IBOutlet weak var map: MKMapView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        self.locationManager.requestWhenInUseAuthorization()
//
//        if CLLocationManager.locationServicesEnabled() {
//
//            locationManager.delegate = self
//            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
//            locationManager.startUpdatingLocation()
//        }
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
//
//        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
//        print("locations = \(locValue.latitude) \(locValue.longitude)")
//        let userLocation = locations.last
//        let viewRegion = MKCoordinateRegionMakeWithDistance((userLocation?.coordinate)!, 600, 600)
//        self.map.setRegion(viewRegion, animated: true)
//    }
//
//}



//-==-=--=-=-=-=--=-=-=-=-=-=-=--=-=-=-=-=-=--==-==-=-
//  MapViewController.swift
//  Squadup
//
//  Created by Jack Liu on 7/16/18.
//  Copyright © 2018 Jack Liu. All rights reserved.
//

//import Foundation
//import UIKit
//import CoreLocation
//import MapKit
//
//class MapViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
//
//
//
//
//
//    var manager:CLLocationManager!
//    var myLocations: [CLLocation] = []
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        //handles the general location manager
//        manager = CLLocationManager()
//        manager.delegate = self
//        manager.desiredAccuracy = kCLLocationAccuracyBest //we want the best fucking accuracy
//        manager.requestAlwaysAuthorization()
//        manager.startUpdatingLocation()
//
//
//        //Actually set the UIMapObject in the storyboard
//        mapObject.delegate = self
//        mapObject.mapType = MKMapType.hybrid //MKMapType.satellite works too -> probably shitty? outdated?
//        mapObject.showsUserLocation = true //Shows the blinking dot -> maybe we can customize it so friends have different colors to differentiate them
//    }
//
//
//    //this updates everything when location changes
//    func locationManager(_ manager:CLLocationManager, didUpdateLocations locations:[CLLocation]) {
//        mapLabel.text = "\(locations[0])" //Report data
//        myLocations.append(locations[0] as CLLocation)
//
//
//        //Changes the zoom/view of the map -> can play around with a little with the zoom to look good
//        let mapSpan: MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
//        //Sets the region of focus
//        let region = MKCoordinateRegionMake(mapObject.userLocation.coordinate, mapSpan)
//        //let region = MKCoordinateRegionMakeWithDistance(mapObject.userLocation.coordinate, 500, 500) //This is an alternate method using distance?
//        self.mapObject.setRegion(region, animated: false)
//
//
//
//
//
//
//        //need at least 2 data entries (locations) to setup drawing the line
//        if (myLocations.count > 1){
//            let sourceIndex = myLocations.count - 1
//            let destinationIndex = myLocations.count - 2
//
//            let c1 = myLocations[sourceIndex].coordinate
//            let c2 = myLocations[destinationIndex].coordinate
//            var a = [c1, c2]
//            let polyline = MKPolyline(coordinates: &a, count: a.count)
//            mapObject.add(polyline)
//        }
//    }
//    //Pretty cool pathing shit that I stole
//    func mapView(_ mapView: MKMapView!, rendererFor overlay: MKOverlay!) -> MKOverlayRenderer! {
//
//        if overlay is MKPolyline {
//            let polylineRenderer = MKPolylineRenderer(overlay: overlay)
//            polylineRenderer.strokeColor = UIColor.red
//            polylineRenderer.lineWidth = 4
//            return polylineRenderer
//        }
//        return nil
//    }
//}


