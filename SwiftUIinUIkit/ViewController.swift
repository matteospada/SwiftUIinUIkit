//
//  ViewController.swift
//  SwiftUIinUIkit
//
//  Created by Matteo Spada on 30/06/22.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    var label = UILabel()
    //UIHostingController eredita da UIViewController, in pratica è un viewController che integra una View di swiftUI
    let swiftUIView = UIHostingController(rootView: SwiftUIView(text: "Testo da UIKit in SwiftUI"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "From UIKit!"
        label.textColor = .systemBlue
        view.addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        //*****************************
        //QUESTA é la parte interessante
        //*****************************
        
        //aggiunge il viewController swiftUI al viewController principale
        addChild(swiftUIView)
        //Si aggiunge la view del controller alle viste del view controller principale.
        view.addSubview(swiftUIView.view)
        
        //Dai un occhiata a questi due articoli per approfondire
        //https://developer.apple.com/documentation/uikit/view_controllers/creating_a_custom_container_view_controller
        //https://sarunw.com/posts/swiftui-in-uikit/#init-in-interface-builder
        
        swiftUIView.view.translatesAutoresizingMaskIntoConstraints = false
        swiftUIView.didMove(toParent: self)
        
        
        //AGGIUNTA DEI CONSTRAINTS
        NSLayoutConstraint.activate([
            swiftUIView.view.bottomAnchor.constraint(equalTo: label.topAnchor),
            swiftUIView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            swiftUIView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            swiftUIView.view.heightAnchor.constraint(equalToConstant: 50)
        ])
    
    }
    
    
}

