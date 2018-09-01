//
//  DocumentDetailViewController.swift
//  Documents
//
//  Created by Hayden on 8/31/18.
//  Copyright © 2018 Harrill, Hayden. All rights reserved.
//

import UIKit

class DocumentDetailViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var docTextView: UITextView!
    
    @IBAction func save(_ sender: UIBarButtonItem) {
        if let text = nameTextField?.text {
            
            let dataBuffer = text.data(using: String.Encoding.utf8)
            fileManager.createFile(atPath: dataFile, contents: dataBuffer, attributes: nil)
            navigationController?.popViewController(animated: true)
        }
    }
    
    var fileManager: FileManager = FileManager.default
    
    var docsDir: String?
    var dataFile: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkFile()
        // Do any additional setup after loading the view.
    }
    
    func checkFile() {
        let dirPaths = fileManager.urls(for: .documentDirectory, in: .userDomainMask)
        dataFile = dirPaths[0].appendingPathComponent("datafile.dat").path
        
        if fileManager.fileExists(atPath: dataFile) {
            if let dataBuffer = fileManager.contents(atPath: dataFile) {
                let dataString = NSString(data: dataBuffer, encoding: String.Encoding.utf8.rawValue)
                nameTextField.text = dataString as String?
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
