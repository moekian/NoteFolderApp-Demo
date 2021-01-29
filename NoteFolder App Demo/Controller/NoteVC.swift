//
//  NoteVC.swift
//  Note Demo Template
//
//  Created by Mohammad Kiani on 2021-01-28.
//  Copyright © 2021 mohammadkiani. All rights reserved.
//

import UIKit

class NoteVC: UIViewController {

    @IBOutlet weak var noteTextView: UITextView!
    var selectedNote: Note? {
        didSet {
            editMode = true
        }
    }
    
    // edit mode by default is false
    var editMode: Bool = false
    
    // an in instance of the noteTVC in noteVC - delegate
    weak var delegate: NoteTVC?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        noteTextView.text = selectedNote?.title
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        if editMode {
            delegate!.deleteNote(note: selectedNote!)
        }
        guard noteTextView.text != "" else {return}
        delegate!.updateNote(with: noteTextView.text)
    }

}
