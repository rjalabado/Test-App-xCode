//
//  ContentView.swift
//  Test App xCode
//
//  Created by RRAlabado on 4/13/23.
//

import SwiftUI
import CoreServices

struct ContentView: View {
    var body: some View {

        // Original base code.
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, Varo!")
//        }
//        .padding()
        
        
        
        // Solution from Apple's video https://developer.apple.com/videos/play/wwdc2019/719/
        // Using the Document Picker to Pick a Folder
        let documentPicker = UIDocumentPickerViewController(documentTypes: [kUTTypeFolder as String],
        in: .open)
        documentPicker.delegate = self
        present(documentPicker, animated: true, completion: nil)
        
        
        // Solution 2
//         Using the Document Picker to Pick a Folder
//        let documentPicker = UIDocumentPickerViewController(documentTypes: [kUTTypeFolder as String], in: .open)
//        documentPicker.delegate = self
//        documentPicker.directoryURL = FileManager.default.currentDirectoryPath
//        UIViewController.present(documentPicker, animated: true)
//        UIViewController.present(documentPicker, animated: true, completion: nil)
        
        
        // Solution 3
//        let documentPicker = UIDocumentPickerViewController(documentTypes: [String(kUTTypeFolder)],  in: .open)
//            documentPicker.delegate = self
//            documentPicker.allowsMultipleSelection = true
//            present(documentPicker, animated: true) {
//                print("done presenting")
//            }
        
        
        // Solution 4
//        // Create a document picker for directories.
//        let documentPicker =
//        UIDocumentPickerViewController(forOpeningContentTypes: [.folder])
////        documentPicker.delegate = self
//
//        // Set the initial directory.
//        documentPicker.directoryURL = FileManager().default.homeDirectoryForCurrentUser
//
//        // Present the document picker.
//        UIViewController().present(documentPicker, animated: true, completion: nil)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
