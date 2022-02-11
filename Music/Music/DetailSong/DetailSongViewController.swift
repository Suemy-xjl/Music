//
//  DetailSongViewController.swift
//  Music
//
//  Created by Omar on 22/12/21.
//  Copyright © 2021 Omar. All rights reserved.
//

import UIKit

class DetailSongViewController: UIViewController {
    
    //MARK: -Outlet
    
    @IBOutlet weak var labelTitle: UILabel!
    
    //MARK: -Variables
    
    var titleSong: String?
    
    //MARK:- Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Agregar la informacion tranferida a este controlador a la etiqueta
        labelTitle.text = titleSong
    }
    

    

}
