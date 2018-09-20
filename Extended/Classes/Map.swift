//
//  Map.swift
//  Extended
//
//  Created by Amir Shayegh on 2018-09-19.
//

import Foundation
import MapKit
import CoreLocation

extension MKMapView {
    public func clearPins() {
        let pins = self.pins()
        self.removeAnnotations(pins)
    }

    public func pins() -> [MKAnnotation] {
        return self.annotations
    }

    public func dropPin(at location: CLLocation, name: String) {
        let myAnnotation: MKPointAnnotation = MKPointAnnotation()
        myAnnotation.coordinate = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude);
        myAnnotation.title = name
        self.addAnnotation(myAnnotation)
    }

    // move map center to specified location
    public func focusOn(location: CLLocation, radius: Double) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,radius * 2.0, radius * 2.0)
        self.setRegion(coordinateRegion, animated: true)
    }
}
