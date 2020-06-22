//
//  NoteViewController.swift
//  NoteFolder App Demo
//
//  Created by Mohammad Kiani on 2020-06-20.
//  Copyright © 2020 mohammadkiani. All rights reserved.
//

import UIKit

class NoteViewController: UIViewController {
    
    @IBOutlet weak var noteTextView: UITextView!
    var selectedNote: Note? {
        didSet {
            // write code after
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
