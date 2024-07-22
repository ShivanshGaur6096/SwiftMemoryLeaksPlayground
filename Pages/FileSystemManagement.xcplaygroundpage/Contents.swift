//: [Previous](@previous)

import Foundation

/*
 Problem Statement: Dynamic File and Directory Structure Management
 Objective: Develop a system to dynamically represent and manage a hierarchical file and directory structure. The system should be capable of handling a variety of directory and file configurations, allowing for easy addition, removal, and duplication management of files and directories.

 - root
     - File1.txt
     - File2.txt
     - File3.txt
     - subDir1
         - File4.txt
         - File5.txt
         - subDir3
             - File6.txt
             - ……
     - subDir2
         - File7.txt
         - File8.txt
 */

/// Important things while representing files is they have name
class FileSystemElement {
    let name: String
    
    init (name: String) {
        self.name = name
    }
}

/// There exist files  and directory only
class File: FileSystemElement {}

class Directory: FileSystemElement {
    var contents: [FileSystemElement] = []
    
    func addElement(_ element: FileSystemElement) {
        contents.append(element)
    }
}

// MARK: How above files will be added to system
/// Create a Directory name `root`
let root = Directory(name: "root")

/// Add files to the root
root.addElement(File(name: "file1.txt"))
root.addElement(File(name: "file2.txt"))
root.addElement(File(name: "file3.txt"))

/// Root could contain Sub Directories
let subDir1 = Directory(name: "SubDir1")
subDir1.addElement(File(name: "file4.txt"))
subDir1.addElement(File(name: "file5.txt"))

/// from problem statement, subDir3 is in subDir1
/// Create subDir
let subDir3 = Directory(name: "SubDir3")
subDir3.addElement(File(name: "file1.txt"))
/// Add it in desired location
subDir1.addElement(subDir3)

let subDir2 = Directory(name: "SubDir2")
subDir2.addElement(File(name: "file7.txt"))
subDir2.addElement(File(name: "file8.txt"))

/// Similarly add other dir in root (if needed)
/// and print root data
root.addElement(subDir1)
root.addElement(subDir2)

// Function to print the directory structure
func printDirectoryStructure(_ directory: Directory, indent: String = "") {
    print("\(indent)\(directory.name)/")
    for element in directory.contents {
        if let file = element as? File {
            print("\(indent)  \(file.name)")
        } else if let subDir = element as? Directory {
            printDirectoryStructure(subDir, indent: indent + "  ")
        }
    }
}

// Print the structure
printDirectoryStructure(root)

func removeDuplicateFiles(form directory: Directory, seenFiles: inout Set<String>) {
    directory.contents = directory.contents.filter { file in
        if let file = file as? File {
            if seenFiles.contains(file.name) {
                return false
            } else {
                seenFiles.insert(file.name)
                return true
            }
        } else if let dir = file as? Directory {
            removeDuplicateFiles(form: dir, seenFiles: &seenFiles)
            return true
        }
        return true
    }
    print(seenFiles)
}

var seenFiles = Set<String>()
removeDuplicateFiles(form: root, seenFiles: &seenFiles)
print("\nAfter removing duplicates:")
printDirectoryStructure(root)

//: [Next](@next)
