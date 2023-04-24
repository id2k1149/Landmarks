//
//  PageViewController.swift
//  Landmarks
//
//  Created by Max Franz Immelmann on 4/24/23.
//

import SwiftUI
import UIKit

struct PageViewController<Page: View>: UIViewControllerRepresentable {
    var pages: [Page]

}
